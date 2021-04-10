using System.Threading.Tasks;
using Google.Protobuf.WellKnownTypes;
using Grpc.Core;
using TMPro;
using UnityEngine;

public class CounterServiceImpl : CounterService.CounterServiceBase
{
    private int _count = 0;
    private readonly TMP_Text _textMesh;
    private readonly Light _light;

    public CounterServiceImpl(TMP_Text textMesh, Light light)
    {
        _textMesh = textMesh;
        _light = light;
    }

    public override async Task<CounterIncrementResponse> Increment(Empty request, ServerCallContext context)
    {
        _count++;
        
        _textMesh.text = _count.ToString();
        _light.transform.Rotate(_light.transform.right, 10);
        
        return new CounterIncrementResponse()
        {
            Count = _count,
        };
    }
}