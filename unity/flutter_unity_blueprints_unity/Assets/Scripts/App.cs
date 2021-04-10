using Grpc.Core;
using TMPro;
using UnityEngine;

public class App : MonoBehaviour
{
    private Server _server;
    private const int Port = 50051;

    [SerializeField] private TMP_Text textMesh;
    [SerializeField] private Light light;

    private void Start()
    {
        _server = new Server()
        {
            Services =
            {
                CounterService.BindService(new CounterServiceImpl(textMesh, light))
            },
            Ports =
            {
                new ServerPort("localhost", Port, ServerCredentials.Insecure)
            }
        };

        _server.Start();
    }

    private async void OnDestroy()
    {
        await _server.ShutdownAsync();
    }
}