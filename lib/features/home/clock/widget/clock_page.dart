import 'package:clock_app/features/home/clock/widget/clock_item.dart';
import 'package:clock_app/features/home/clock/widget/main_clock.dart';
import 'package:flutter/material.dart';

class ClockPage extends StatelessWidget {
  ClockPage({Key? key}) : super(key: key);

  final List<Widget> _widgets = [
    const MainClock(),
    const ClockItem(),
    const ClockItem(),
    const ClockItem(),
    const ClockItem(),
    const ClockItem(),
    const ClockItem(),
    const ClockItem(),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _widgets.length,
      itemBuilder: (ctx, index) => _widgets[index],
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
    );
  }
}
