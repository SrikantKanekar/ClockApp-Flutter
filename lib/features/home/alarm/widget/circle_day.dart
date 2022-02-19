import 'package:flutter/material.dart';

class CircleDay extends StatelessWidget {
  final String day;

  const CircleDay({Key? key, required this.day}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      child: Text(day),
      backgroundColor: Colors.white38,
      radius: 16,
    );
  }
}
