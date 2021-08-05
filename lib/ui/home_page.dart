import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_unity_blueprints/ui/counter_controller_view.dart';
import 'package:flutter_unity_blueprints/ui/counter_unity_app_view.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePage extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var pageController = usePageController();
    var index = ref.watch(homePageViewControllerProvider);

    return Scaffold(
      appBar: AppBar(),
      body: PageView(
        onPageChanged: (index) {
          ref.watch(homePageViewControllerProvider.notifier).index = index;
        },
        controller: pageController,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                'Flutter Unity Blueprints',
                style: Theme.of(context).textTheme.headline2,
              ),
            ),
          ),
          CounterUnityAppView(
            child: CounterControllerView(),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (index) {
          pageController.jumpToPage(index);
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.apps), label: "Flutter"),
          BottomNavigationBarItem(icon: Icon(Icons.timer), label: "Counter"),
        ],
      ),
    );
  }
}

final homePageViewControllerProvider =
    StateNotifierProvider<HomePageViewController, int>(
        (ref) => HomePageViewController(0));

class HomePageViewController extends StateNotifier<int> {
  HomePageViewController(state) : super(0);

  int get index => state;

  set index(int i) {
    state = i;
  }
}
