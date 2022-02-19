import 'package:flutter/material.dart';

class ClockItem extends StatelessWidget {
  const ClockItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Osaka'),
                Text('-10h 30m'),
              ],
            ),
            const Text(
              '8:34AM',
              style: TextStyle(fontSize: 40),
            )
          ],
        ),
      ),
    );
  }
}
