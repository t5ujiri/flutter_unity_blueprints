import 'package:flutter/material.dart';
import 'package:flutter_unity_blueprints/ui/page/counter/counter_page.dart';
import 'package:flutter_unity_blueprints/ui/page/jumper/jumper_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePage extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Center(
          child: Wrap(
            direction: Axis.vertical,
            spacing: 10,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return CounterPage();
                  }));
                },
                child: Text('Open Counter'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return JumperPage();
                  }));
                },
                child: Text('Open Jumper'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
