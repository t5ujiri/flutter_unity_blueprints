using FlutterUnityPlugin.Runtime.Model;
using FlutterUnityPlugin.Runtime.View;
using UniRx;
using UnityEngine;
using UnityEngine.UI;

namespace FlutterUnityPlugin.Sample.Presentation.View
{
    public class FlutterMessageMockButton : MonoBehaviour
    {
        [SerializeField] private Button button;

        private void Start()
        {
            var flutterMessageHandler = FindObjectOfType<FlutterMessageHandler>();
            button.OnClickAsObservable().Subscribe(_ =>
            {
                var message = new Message()
                {
                    id = 0,
                    data = "0"
                };
                flutterMessageHandler.OnMessage(message.ToJson());
            }).AddTo(this);
        }
    }
}