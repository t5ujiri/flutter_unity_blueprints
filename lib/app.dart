import 'package:app/ui/home/home_page.dart';
import 'package:app/ui/route/app_route.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class App extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appRouter = useMemoized(() => AppRouter());

    return MaterialApp.router(
      title: 'Flutter Unity Blueprint',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerDelegate: appRouter.delegate(),
      routeInformationParser:
          appRouter.defaultRouteParser(includePrefixMatches: true),
    );
  }
}
