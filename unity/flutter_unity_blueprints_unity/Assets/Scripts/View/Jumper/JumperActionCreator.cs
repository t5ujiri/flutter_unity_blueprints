using Fub.Unity;
using NotImplementedException = System.NotImplementedException;

namespace FlutterUnityBlueprints.View.Jumper
{
    public static class JumperActionCreator
    {
        public static AppAction ToggleCabJump(bool b)
        {
            return new AppAction()
            {
                JumperAction = new JumperAction()
                {
                    ToggleCanJump = new JumperAction.Types.ToggleCanJump()
                    {
                        CanJump = b
                    }
                }
            };
        }
    }
}