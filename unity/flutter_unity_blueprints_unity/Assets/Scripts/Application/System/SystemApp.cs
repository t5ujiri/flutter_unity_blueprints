using System;
using System.Threading;
using Cysharp.Threading.Tasks;
using FlutterUnityBlueprints.View.System;
using Fub.Unity;
using JetBrains.Annotations;
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
        private readonly IAsyncSubscriber<LoadAppState> _loadAppStateSubscriber;

        private readonly CancellationTokenSource _cts = new();

        public SystemApp(SystemPanel systemPanel, IAsyncSubscriber<LoadAppState> loadAppStateSubscriber)
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

                switch (r.AppCase)
                {
                    case LoadAppState.AppOneofCase.None:
                    {
                        await UnloadAllAdditiveScenes();
                        break;
                    }
                    case LoadAppState.AppOneofCase.Counter:
                    {
                        if (SceneManager.GetSceneByName("Counter").isLoaded) return;
                        await UnloadAllAdditiveScenes();
                        using var scope = LifetimeScope.EnqueueParent(Object.FindObjectOfType<SystemScope>());
                        await SceneManager.LoadSceneAsync("Counter", LoadSceneMode.Additive);
                        _systemPanel.gameObject.SetActive(false);
                        Debug.Log("Counter scene loaded");
                        break;
                    }
                    case LoadAppState.AppOneofCase.Jumper:
                    {
                        if (SceneManager.GetSceneByName("Jumper").isLoaded) return;
                        await UnloadAllAdditiveScenes();
                        using var scope = LifetimeScope.EnqueueParent(Object.FindObjectOfType<SystemScope>());
                        await SceneManager.LoadSceneAsync("Jumper", LoadSceneMode.Additive);
                        _systemPanel.gameObject.SetActive(false);
                        Debug.Log("Jumper scene loaded");
                        break;
                    }
                    default:
                    {
                        await UnloadAllAdditiveScenes();
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