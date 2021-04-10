import 'package:flutter/material.dart';
import 'package:flutter_unity/flutter_unity.dart';
import 'package:flutter_unity_blueprints/data/provider/unity_counter_service_client_provider.dart';
import 'package:flutter_unity_blueprints/gen/protos/google/protobuf/empty.pb.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, watch) {
    watch(unityCounterServiceClientProvider);

    return Scaffold(
      body: Stack(
        children: [
          UnityView(
            onCreated: ((controller) {
              controller.resume();
            }),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () async {
          var response = await context
              .read(unityCounterServiceClientProvider)
              .increment(Empty());
          print(response.count);
        },
      ),
    );
  }
}
