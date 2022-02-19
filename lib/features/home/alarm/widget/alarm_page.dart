import 'package:clock_app/features/home/alarm/widget/alarm_item.dart';
import 'package:flutter/material.dart';

class AlarmPage extends StatelessWidget {
  const AlarmPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 22,
      itemBuilder: (ctx, index) {
        return const AlarmItem();
      },
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
    );
  }
}
