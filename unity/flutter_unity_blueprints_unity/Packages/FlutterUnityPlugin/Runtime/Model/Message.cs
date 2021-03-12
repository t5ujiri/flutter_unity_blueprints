using UnityEngine;

namespace FlutterUnityPlugin.Runtime.Model
{
    public class Message
    {
        public int id;
        public string data;

        public static Message FromJson(string json)
        {
            return JsonUtility.FromJson<Message>(json);
        }

        public string ToJson()
        {
            return JsonUtility.ToJson(this);
        }
    }
}