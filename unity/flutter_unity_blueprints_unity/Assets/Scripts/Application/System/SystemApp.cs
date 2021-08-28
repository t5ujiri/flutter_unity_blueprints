using System;
using System.Threading;
using Cysharp.Threading.Tasks;
using Cysharp.Threading.Tasks.Linq;
using FlutterUnityBlueprints.Data.Repository;
using FlutterUnityBlueprints.View.System;
using UnityEngine;
using UnityEngine.SceneManagement;
using VContainer.Unity;
using Object = UnityEngine.Object;

namespace FlutterUnityBlueprints.Application.System
{
    public class SystemApp : IStartable, IDisposable
    {
        private readonly SystemPanel _systemPanel;
        private readonly FlutterRepository _flutterRepository;
        private readonly CancellationTokenSource _cts = new CancellationTokenSource();

        public SystemApp(SystemPanel systemPanel,
            FlutterRepository flutterRepository)
        {
            _systemPanel = systemPanel;
            _flutterRepository = flutterRepository;
        }

        public void Dispose()
        {
            _cts?.Dispose();
        }

        public void Start()
        {
            _flutterRepository.LoadAppStream.ForEachAwaitWithCancellationAsync(async (r, ct) =>
            {
                if (r == default) return;

                switch (r.AppName)
                {
                    case "Counter":
                    {
                        if (SceneManager.GetSceneByName("Counter").isLoaded) return;
                        await UnloadAllAdditiveScenes();
                        using var scope = LifetimeScope.EnqueueParent(Object.FindObjectOfType<SystemScope>());
                        await SceneManager.LoadSceneAsync("Counter", LoadSceneMode.Additive);
                        _systemPanel.gameObject.SetActive(false);
                        Debug.Log("Counter scene loaded");
                        break;
                    }
                    case "Jumper":
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
            }, _cts.Token).Forget();
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