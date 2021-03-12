using FlutterUnityPlugin.Runtime.Model;
using UniRx;
using UnityEngine;

namespace FlutterUnityPlugin.Runtime.View
{
    public class FlutterMessageHandler : MonoBehaviour
    {
        // ReSharper disable once UnusedMember.Global
        public void OnMessage(string json)
        {
            var message = Message.FromJson(json);
            MessageBroker.Default.Publish(message);
        }
    }
}