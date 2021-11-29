using Fub.Unity;

namespace FlutterUnityBlueprints.View.Jumper
{
    public static class JumperActionCreator
    {
        public static AppAction Jump()
        {
            return new AppAction()
            {
                JumperAction = new JumperAction()
                {
                }
            };
        }
    }
}