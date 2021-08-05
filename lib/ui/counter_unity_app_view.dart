import 'package:flutter/material.dart';
import 'package:flutter_unity/flutter_unity.dart';
import 'package:flutter_unity_blueprints/gen/protos/counter.pbgrpc.dart';
import 'package:flutter_unity_blueprints/gen/protos/unity.pbgrpc.dart';
import 'package:grpc/grpc.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CounterUnityAppView extends HookConsumerWidget {
  final Widget? child;

  CounterUnityAppView({this.child});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final unityController = ref.watch(unityControllerProvider);
    final sceneServiceClient = ref.watch(sceneServiceClientProvider);

    return Scaffold(
      body: Stack(
        children: [
          UnityView(
            onCreated: (controller) {
              controller.resume();
              ref.read(unityControllerProvider.notifier).controller =
                  controller;
            },
          ),
          unityController != null
              ? FutureBuilder(
                  future: sceneServiceClient
                      .loadScene(LoadSceneRequest(sceneName: "Counter")),
                  builder: (context, snapshot) {
                    if (snapshot.hasError) {
                      return Center(
                        child: Text(snapshot.error.toString()),
                      );
                    }

                    return ProviderScope(
                      overrides: [
                        counterServiceClientProvider
                            .overrideWithProvider(Provider.autoDispose((ref) {
                          final channel = ClientChannel('localhost',
                              port: 50001,
                              options: ChannelOptions(
                                  credentials: ChannelCredentials.insecure()));
                          ref.onDispose(() async {
                            await channel.shutdown();
                          });
                          return CounterServiceClient(channel);
                        })),
                      ],
                      child: child ?? Container(),
                    );
                  },
                )
              : Container(),
        ],
      ),
    );
  }
}

class UnityViewModel extends StateNotifier<UnityViewController?> {
  UnityViewModel(UnityViewController? state) : super(state);

  UnityViewController? get controller => state;

  set controller(UnityViewController? controller) {
    state = controller;
  }
}

final unityControllerProvider =
    StateNotifierProvider<UnityViewModel, UnityViewController?>(
        (ref) => new UnityViewModel(null));

final sceneServiceClientProvider = Provider.autoDispose((ref) {
  final channel = ClientChannel('localhost',
      port: 50000,
      options: ChannelOptions(credentials: ChannelCredentials.insecure()));
  ref.onDispose(() async {
    await channel.shutdown();
  });
  return SceneServiceClient(channel);
});

final counterServiceClientProvider =
    Provider.autoDispose<CounterServiceClient>((ref) {
  throw UnimplementedError();
});
