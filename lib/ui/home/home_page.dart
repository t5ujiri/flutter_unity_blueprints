import 'package:app/ui/route/app_router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class HomePage extends HookConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Wrap(
          direction: Axis.vertical,
          spacing: 10,
          children: [
            ElevatedButton(
              onPressed: () {
                context.pushRoute(const CounterRoute());
              },
              child: const Text('Open Counter'),
            ),
          ],
        ),
      ),
    );
  }
}
