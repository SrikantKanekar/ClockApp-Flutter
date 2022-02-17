import 'package:flutter/material.dart';

Route<T> fadeRoute<T>(
  String name,
  Widget Function(BuildContext context) builder, {
  int transitionDurationMs = 300,
  bool? opaque,
  Object? arguments,
}) {
  return PageRouteBuilder(
    settings: RouteSettings(name: name, arguments: arguments),
    opaque: opaque ?? true,
    pageBuilder: (context, animation, secondaryAnimation) => builder(context),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(
        opacity: animation,
        child: child,
      );
    },
    transitionDuration: Duration(milliseconds: transitionDurationMs),
  );
}
