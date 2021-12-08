import 'package:app/ui/route/app_route.dart';
import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
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
                  context.pushRoute(CounterRoute());
                },
                child: Text('Open Counter'),
              ),
              ElevatedButton(
                onPressed: () {
                  context.pushRoute(JumperRoute());
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
