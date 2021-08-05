using System.Collections.Generic;

namespace FlutterUnityBlueprints.Application
{
    public class Constants
    {
        public const int SceneServicePort = 50000;

        public static readonly Dictionary<string, int> PortMap = new Dictionary<string, int>()
        {
            {"Counter", 50001},
        };
    }
}