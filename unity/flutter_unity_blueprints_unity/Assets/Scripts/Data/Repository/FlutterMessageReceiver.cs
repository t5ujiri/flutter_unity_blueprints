using System;
using Fub.Unity;
using Google.Protobuf;
using UnityEngine;

namespace FlutterUnityBlueprints.Data.Repository
{
    [DefaultExecutionOrder(int.MaxValue)]
    public class FlutterMessageReceiver : MonoBehaviour
    {
        public delegate void AppActionFromFlutterHandler(PRootAction message);

        public AppActionFromFlutterHandler OnAppActionFromFlutter { get; set; } = default;

        private static FlutterMessageReceiver _instance;

        public static FlutterMessageReceiver Instance
        {
            get
            {
                if (_instance != null) return _instance;

                _instance = FindObjectOfType<FlutterMessageReceiver>();

                if (_instance != null) return _instance;

                _instance = new GameObject("FlutterMessageReceiver").AddComponent<FlutterMessageReceiver>();
                DontDestroyOnLoad(_instance);

                return _instance;
            }
        }

        private void Awake()
        {
            if (Instance != null && Instance != this)
            {
                DestroyImmediate(this);
            }
        }

        /// <summary>
        /// This method is called from Flutter
        /// </summary>
        /// <param name="json"></param>
        public void OnReceive(string json)
        {
            var message = new PRootAction();
            message.MergeFrom(Convert.FromBase64String(json));

            if (OnAppActionFromFlutter.GetInvocationList().Length > 0)
            {
                OnAppActionFromFlutter(message);
            }
        }
    }
}