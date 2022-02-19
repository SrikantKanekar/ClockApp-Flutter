import 'package:flutter/material.dart';

class MainClock extends StatelessWidget {
  const MainClock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '6:56PM',
            style: TextStyle(fontSize: 70),
          ),
          Row(
            children: const [Text('Sat, 19 Feb')],
          )
        ],
      ),
    );
  }
}
