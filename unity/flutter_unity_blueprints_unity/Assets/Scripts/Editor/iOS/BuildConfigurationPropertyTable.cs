using System;
using System.Collections.Generic;
using UnityEngine;

namespace FlutterUnityBlueprints.Editor
{
    [CreateAssetMenu(fileName = "NewBuildConfigurationPropertyTable", menuName = "Editor/Create BuildConfigurationPropertyTable")]
    public class BuildConfigurationPropertyTable : ScriptableObject
    {
        public List<BuildConfigurationPropertyTableEntry> entries;
    }

    [Serializable]
    public class BuildConfigurationPropertyTableEntry
    {
        public string key;
        public List<string> values;
    }
}