import 'package:app/ui/counter/counter_page.dart';
import 'package:app/ui/home/home_page.dart';
import 'package:app/ui/jumper/jumper_page.dart';
import 'package:auto_route/annotations.dart';

export 'app_route.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: HomePage,
      initial: true,
    ),
    AutoRoute(page: CounterPage),
    AutoRoute(page: JumperPage),
  ],
)
class $AppRouter {}
