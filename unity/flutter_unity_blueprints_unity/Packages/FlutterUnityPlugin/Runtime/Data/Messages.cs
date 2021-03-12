#if UNITY_IOS
using System.Runtime.InteropServices;
#endif

using FlutterUnityPlugin.Runtime.Model;
using UnityEngine;

namespace FlutterUnityPlugin.Runtime.Data
{
    public static class Messages
    {
        public static void Send(Message message)
        {
            var json = message.ToJson();

            if (UnityEngine.Application.platform == RuntimePlatform.Android)
            {
                using (var flutterUnityPluginClass =
                    new AndroidJavaClass("com.glartek.flutter_unity.FlutterUnityPlugin"))
                {
                    flutterUnityPluginClass.CallStatic("onMessage", json);
                }
            }
            else
            {
#if UNITY_IOS
                FlutterUnityPluginOnMessage(json);
#endif
            }
        }

#if UNITY_IOS
        [DllImport("__Internal")]
        private static extern void FlutterUnityPluginOnMessage(string data);
#endif
    }
}