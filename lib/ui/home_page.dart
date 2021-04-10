import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_unity/flutter_unity.dart';
import 'package:flutter_unity_blueprints/gen/protos/google/protobuf/empty.pb.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'unity_view_model.dart';

class HomePage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, watch) {
    var state = watch(unityViewModelProvider.state);

    return Scaffold(
      appBar: AppBar(
        title: Text(state.port.toString()),
      ),
      body: Stack(
        children: [
          UnityView(
            onCreated: ((controller) {
              controller.resume();
            }),
            onMessage: (controller, m) {
              var message = jsonDecode(m);

              // handle server started event
              if (message['eventName'] == 'serverStarted') {
                var port = message['port']!;

                context.read(unityViewModelProvider).initClientWithPort(port);

                print('Client connected to localhost:port $port');
              }
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () async {
          var response = await context
              .read(unityViewModelProvider)
              .counterServiceClient
              ?.increment(Empty());
          print(response?.count);
        },
      ),
    );
  }
}
