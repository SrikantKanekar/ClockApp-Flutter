import 'package:clock_app/common/utilities/custom_routes.dart';
import 'package:flutter/material.dart';

import 'alarm_page.dart';

class AlarmScreen {
  static const String routeName = 'AlarmScreen';

  static Route route(RouteSettings routeSettings) => fadeRoute(
        routeName,
        (context) => const AlarmPage(),
      );
}
