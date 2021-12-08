using UniRx;
using UnityEngine;

namespace FlutterUnityBlueprints.View.Jumper
{
    public class JumpingCube : MonoBehaviour
    {
        private Rigidbody _rigidbody;
        public readonly BoolReactiveProperty IsLanding = new();

        private void OnEnable()
        {
            _rigidbody = gameObject.GetComponent<Rigidbody>();
        }

        public void Jump()
        {
            _rigidbody.AddForce(Vector3.up * 10, ForceMode.Impulse);
        }

        private void OnCollisionEnter(Collision other)
        {
            IsLanding.Value = true;
        }

        private void OnCollisionExit(Collision other)
        {
            IsLanding.Value = false;
        }
    }
}