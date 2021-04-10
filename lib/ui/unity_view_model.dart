import 'package:flutter_unity/flutter_unity.dart';
import 'package:flutter_unity_blueprints/gen/protos/counter.pbgrpc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grpc/grpc.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'unity_view_model.freezed.dart';

class UnityViewModel extends StateNotifier<UnityViewState> {
  UnityViewModel(UnityViewState state) : super(state);

  UnityViewController? get unityViewController => state.unityViewController;

  CounterServiceClient? get counterServiceClient => state.counterServiceClient;

  int? get port => state.port;

  void setController(UnityViewController controller) {
    state = state.copyWith(
      unityViewController: controller,
    );
  }

  void initClientWithPort(int port) {
    state = state.copyWith(
      counterServiceClient: CounterServiceClient(ClientChannel(
        'localhost',
        port: port,
        options: ChannelOptions(
          credentials: ChannelCredentials.insecure(),
        ),
      )),
      port: port,
    );
  }
}

@freezed
class UnityViewState with _$UnityViewState {
  const factory UnityViewState({
    UnityViewController? unityViewController,
    CounterServiceClient? counterServiceClient,
    int? port,
  }) = _UnityViewState;
}

final unityViewModelProvider = StateNotifierProvider<UnityViewModel>((ref) {
  return UnityViewModel(UnityViewState());
});
