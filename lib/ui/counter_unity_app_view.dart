import 'dart:convert';

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
    final initialized = ref.watch(isUnityInitialized);
    final sceneServiceClient = ref.watch(sceneServiceClientProvider);

    return Scaffold(
      body: Stack(
        children: [
          UnityView(
            onCreated: (controller) {
              controller.resume();
            },
            onMessage: (controller, message) {
              var payload = jsonDecode(message);
              var eventName = payload?['data']?['eventType'];
              if (eventName != null &&
                  eventName is String &&
                  eventName == "UNITY_INITIALIZED") {
                ref.read(isUnityInitialized.notifier).isInitialized = true;
              }
            },
          ),
          initialized
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

class UnityViewModel extends StateNotifier<bool> {
  UnityViewModel(bool state) : super(false);

  bool get isInitialized => state;

  set isInitialized(bool isInitialized) {
    state = isInitialized;
  }
}

final isUnityInitialized = StateNotifierProvider<UnityViewModel, bool>(
    (ref) => new UnityViewModel(false));

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
