import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class InjectionView extends StatelessWidget {
  const InjectionView({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // Provider(create: (_) => ),
      ],
      child: child,
    );
  }
}
