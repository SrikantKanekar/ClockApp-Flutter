import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

abstract class BlocBase {
  void dispose() {}
}

/// Generic BLoC provider
class BlocProvider<T extends BlocBase> extends StatefulWidget {
  const BlocProvider({
    Key? key,
    required this.child,
    required this.bloc,
  }) : super(key: key);

  final T bloc;
  final Widget child;

  @override
  _BlocProviderState<T> createState() => _BlocProviderState<T>();

  static T of<T extends BlocBase>(BuildContext context) =>
      Provider.of<T>(context, listen: false);
}

class _BlocProviderState<T> extends State<BlocProvider<BlocBase>> {
  @override
  Widget build(BuildContext context) => widget.child;

  @override
  void dispose() {
    widget.bloc.dispose();
    super.dispose();
  }
}

class MultiBlocProvider extends StatelessWidget {
  const MultiBlocProvider({
    Key? key,
    required this.blocs,
    required this.child,
  }) : super(key: key);

  final List<BlocBase> blocs;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    late Widget widget;
    blocs.forEach((bloc) {
      widget = BlocProvider(child: child, bloc: bloc);
    });
    return widget;
  }
}

mixin StreamSubscriptionController<T extends StatefulWidget> on State<T> {
  final List<StreamSubscription> _subs = <StreamSubscription>[];

  void subscribe(StreamSubscription subscription) => _subs.add(subscription);

  void subscribeAll(List<StreamSubscription> subscriptions) =>
      _subs.addAll(subscriptions);

  @override
  void dispose() {
    _subs.forEach((subscription) => subscription.cancel());
    super.dispose();
  }
}
