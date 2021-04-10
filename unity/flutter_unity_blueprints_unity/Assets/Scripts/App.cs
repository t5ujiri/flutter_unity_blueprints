using System;
using FlutterUnityPlugin.Runtime;
using Grpc.Core;
using TMPro;
using UnityEngine;

public class App : MonoBehaviour
{
    private Server _server;
    private const int DefaultPort = 50051;
    private const int PortScanCount = 10;

    [SerializeField] private TMP_Text textMesh;
    [SerializeField] private new Light light;

    private void Start()
    {
        _server = new Server()
        {
            Services =
            {
                CounterService.BindService(new CounterServiceImpl(textMesh, light))
            }
        };

        var port = TryAddPort(_server);

        Messages.Send(new Message
        {
            id = -1,
            data = JsonUtility.ToJson(new ServerStartedEvent(port)),
        });

        _server.Start();

        Debug.Log($"Server started on port {port}.");
    }

    private static int TryAddPort(Server server)
    {
        for (var i = 0; i < PortScanCount; i++)
        {
            var result = server.Ports.Add(new ServerPort("localhost", DefaultPort + i, ServerCredentials.Insecure));
            if (result != 0)
            {
                return DefaultPort + i;
            }
        }

        throw new Exception($"failed to bind port from {DefaultPort} to {DefaultPort + PortScanCount}");
    }

    private async void OnDestroy()
    {
        await _server.ShutdownAsync();

        Debug.Log($"Server killed.");
    }
}

[Serializable]
public class ServerStartedEvent
{
    public ServerStartedEvent(int port)
    {
        this.port = port;
    }

    public string eventName = "serverStarted";
    public int port;
}