using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;
using Cysharp.Threading.Tasks;
using Google.Protobuf.WellKnownTypes;
using Grpc.Core;
using Pbunity;
using UnityEngine;
using UnityEngine.SceneManagement;

namespace FlutterUnityBlueprints.Application.System
{
    public class SceneServiceImpl : SceneService.SceneServiceBase
    {
        private readonly Canvas _canvas;
        private readonly Dictionary<string, int> _portTable;
        private readonly SemaphoreSlim _loadSceneLock = new SemaphoreSlim(1, 1);

        public SceneServiceImpl(Canvas canvas,
            Dictionary<string, int> portTable)
        {
            _canvas = canvas;
            _portTable = portTable;
        }

        public override async Task<LoadSceneResponse> LoadScene(LoadSceneRequest request, ServerCallContext context)
        {
            await _loadSceneLock.WaitAsync();
            try
            {
                await UniTask.SwitchToMainThread();
                if (!_portTable.TryGetValue(request.SceneName, out var port))
                {
                    throw new RpcException(new Status(StatusCode.Internal,
                        $"port for requested scene {request.SceneName} does not exist."));
                }

                var scene = SceneManager.GetSceneByName(request.SceneName);

                if (scene != default && scene.isLoaded)
                {
                    return new LoadSceneResponse()
                    {
                        Port = port
                    };
                }

                try
                {
                    await SceneManager.LoadSceneAsync(request.SceneName, LoadSceneMode.Additive);
                    _canvas.gameObject.SetActive(false);

                    return new LoadSceneResponse
                    {
                        Port = port
                    };
                }
                catch
                {
                    throw new RpcException(new Status(StatusCode.NotFound,
                        $"failed to load scene {request.SceneName}"));
                }
            }
            catch (Exception ex)
            {
                if (ex is RpcException)
                {
                    throw;
                }

                throw new RpcException(new Status(StatusCode.Internal, ex.Message));
            }
            finally
            {
                _loadSceneLock.Release();
            }
        }

        public override async Task<Empty> UnloadScene(UnloadSceneRequest request, ServerCallContext context)
        {
            await UniTask.SwitchToMainThread();
            await SceneManager.UnloadSceneAsync(request.SceneName);

            var sceneCount = SceneManager.sceneCount;

#if UNITY_EDITOR
            var testScene = SceneManager.GetSceneByName("Test");
            if (testScene.IsValid() && testScene.isLoaded)
            {
                sceneCount -= 1;
            }
#endif

            if (sceneCount == 1)
            {
                _canvas.gameObject.SetActive(true);
            }

            return new Empty();
        }

        private async UniTask UnloadApplication()
        {
            var scenes = Enumerable.Range(0, SceneManager.sceneCount).Select(SceneManager.GetSceneAt).ToList();
            foreach (var scene in scenes.Where(scene => scene.name != "System"))
            {
                await SceneManager.UnloadSceneAsync(scene);
            }
        }
    }

    public class SceneInitializedEvent
    {
        public SceneInitializedEvent(string sceneName, int port)
        {
            SceneName = sceneName;
            this.port = port;
        }

        public string SceneName { get; }
        public int port { get; }
    }
}