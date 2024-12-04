using System;
using System.Threading;
using Cysharp.Threading.Tasks;
using FlutterUnityBlueprints.Data.Installer;
using FlutterUnityBlueprints.Data.Repository;
using FlutterUnityBlueprints.View.System;
using Fub.Unity;
using MessagePipe;
using UnityEngine;
using UnityEngine.SceneManagement;
using VContainer.Unity;
using Object = UnityEngine.Object;

namespace FlutterUnityBlueprints
{
    // ReSharper disable once ClassNeverInstantiated.Global
    public class App : IStartable, IDisposable
    {
        private readonly SystemPanel _systemPanel;
        private readonly IAsyncSubscriber<PLoadAppAction> _loadAppStateSubscriber;

        private readonly CancellationTokenSource _cts = new();

        public App(SystemPanel systemPanel, IAsyncSubscriber<PLoadAppAction> loadAppStateSubscriber)
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
                        FlutterRepository.SendState(new PRootState()
                        {
                            LoadAppState = new PLoadAppState()
                            {
                                Counter = new PLoadAppState.Types.Counter()
                            }
                        });
                        break;
                    }
                    case PLoadAppAction.ActionOneofCase.Unload:
                    default:
                    {
                        await UnloadAllAdditiveScenes();
                        FlutterRepository.SendState(new PRootState()
                        {
                            LoadAppState = new PLoadAppState()
                        });
                        break;
                    }
                }
            }).AddTo(_cts.Token);
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