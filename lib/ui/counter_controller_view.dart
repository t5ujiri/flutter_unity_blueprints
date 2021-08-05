import 'package:flutter/material.dart';
import 'package:flutter_unity_blueprints/gen/protos/google/protobuf/empty.pb.dart';
import 'package:flutter_unity_blueprints/gen/protos/unity.pb.dart';
import 'package:flutter_unity_blueprints/ui/counter_unity_app_view.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CounterControllerView extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counterServiceClient = ref.watch(counterServiceClientProvider);
    final sceneServiceClient = ref.watch(sceneServiceClientProvider);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ElevatedButton(
            child: Icon(Icons.add),
            onPressed: () async {
              await counterServiceClient.increment(Empty());
            },
          ),
          ElevatedButton(
            child: Text("Load"),
            onPressed: () async {
              await sceneServiceClient
                  .loadScene(LoadSceneRequest(sceneName: "Counter"));
            },
          ),
          ElevatedButton(
            child: Text("Unload"),
            onPressed: () async {
              await sceneServiceClient.unloadScene(UnloadSceneRequest(sceneName: "Counter"));
            },
          ),
        ],
      ),
    );
  }
}
