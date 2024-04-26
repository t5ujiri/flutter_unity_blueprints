using System;
using System.Threading;
using Cysharp.Threading.Tasks;
using FlutterUnityBlueprints.Data.Repository;
using FlutterUnityBlueprints.View.System;
using Fub.Unity;
using MessagePipe;
using UnityEngine;
using UnityEngine.SceneManagement;
using VContainer.Unity;
using Object = UnityEngine.Object;

namespace FlutterUnityBlueprints.Application.System
{
    public class SystemApp : IStartable, IDisposable
    {
        private readonly SystemPanel _systemPanel;
        private readonly IAsyncSubscriber<PLoadAppAction> _loadAppStateSubscriber;

        private readonly CancellationTokenSource _cts = new();

        public SystemApp(SystemPanel systemPanel, IAsyncSubscriber<PLoadAppAction> loadAppStateSubscriber)
        {
            _systemPanel = systemPanel;
            _loadAppStateSubscriber = loadAppStateSubscriber;
        }

        public void Dispose()
        {
            _cts?.Dispose();
        }

        public void Start()
        {
            _loadAppStateSubscriber.Subscribe(async (r, ct) =>
            {
                if (r == default) return;

                switch (r.ActionCase)
                {
                    case PLoadAppAction.ActionOneofCase.None:
                    {
                        await UnloadAllAdditiveScenes();
                        break;
                    }
                    case PLoadAppAction.ActionOneofCase.Counter:
                    {
                        if (SceneManager.GetSceneByName("Counter").isLoaded) return;
                        await UnloadAllAdditiveScenes();
                        using var scope = LifetimeScope.EnqueueParent(Object.FindObjectOfType<SystemScope>());
                        await SceneManager.LoadSceneAsync("Counter", LoadSceneMode.Additive);
                        _systemPanel.gameObject.SetActive(false);
                        Debug.Log("Counter scene loaded");
                        FlutterRepository.SendState(new PAppState()
                        {
                            LoadAppState = new PLoadSceneState()
                            {
                                Counter = new PLoadSceneState.Types.Counter()
                            }
                        });
                        break;
                    }
                    default:
                    {
                        await UnloadAllAdditiveScenes();
                        FlutterRepository.SendState(new PAppState()
                        {
                            LoadAppState = new PLoadSceneState()
                        });
                        break;
                    }
                }
            }).AddTo(_cts.Token);
            
            FlutterRepository.SendState(new PAppState()
            {
                LoadAppState = new PLoadSceneState()
                {
                    System = new PLoadSceneState.Types.System()
                }
            });
        }

        private async UniTask UnloadAllAdditiveScenes()
        {
            // Unload all scene
            for (var i = 0; i < SceneManager.sceneCount; i++)
            {
                var scene = SceneManager.GetSceneAt(i);
                if (scene.name != "System" && scene.name != "Test")
                {
                    await SceneManager.UnloadSceneAsync(scene);
                }
            }

            _systemPanel.gameObject.SetActive(true);
        }
    }
}