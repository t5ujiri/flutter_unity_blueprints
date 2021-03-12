import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_unity/flutter_unity.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runZonedGuarded(() {
    runApp(ProviderScope(child: App()));
  }, (error, trace) {});
}

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: EmbeddedUnityView(),
    );
  }
}

class EmbeddedUnityViewModel extends ChangeNotifier {
  UnityViewController? _unityViewController;

  UnityViewController? get unityViewController => _unityViewController;

  set unityViewController(UnityViewController? unityViewController) {
    _unityViewController = unityViewController;
    notifyListeners();
  }

  int _count = 0;

  int get count => _count;

  set count(int count) {
    _count = count;
    unityViewController?.send(
        'FlutterMessageHandler', 'OnMessage', count.toString());
    notifyListeners();
  }

  String _status = '';

  String get status => _status;

  set status(String status) {
    _status = status;
    notifyListeners();
  }
}

final embeddedUnityViewModel = Provider((ref) => EmbeddedUnityViewModel());

class EmbeddedUnityView extends HookWidget {
  @override
  Widget build(BuildContext context) {
    var viewModel = useProvider(embeddedUnityViewModel);

    return Scaffold(
      body: Stack(
        children: [
          UnityView(
            onCreated: ((controller) {
              viewModel.unityViewController = controller;
              viewModel.status = 'initialized';
              viewModel.count = 0;
            }),
          ),
          Center(
            child: Text(viewModel.status),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          viewModel.count++;
        },
      ),
    );
  }
}
