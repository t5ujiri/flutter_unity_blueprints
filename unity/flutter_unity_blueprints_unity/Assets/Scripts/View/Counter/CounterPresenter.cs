using FlutterUnityBlueprints.Application.Counter;
using TMPro;

namespace FlutterUnityBlueprints.View.Counter
{
    public class CounterPresenter : ICounterPresenter
    {
        private int _count;
        private readonly TMP_Text _textMesh;

        public CounterPresenter(TMP_Text textMesh)
        {
            _textMesh = textMesh;
        }

        public void Increment()
        {
            _count++;
            _textMesh.text = _count.ToString();
        }
    }
}