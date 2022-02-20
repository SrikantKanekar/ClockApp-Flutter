import 'package:flutter/material.dart';

class TimerItem extends StatefulWidget {
  const TimerItem({Key? key}) : super(key: key);

  @override
  _TimerItemState createState() => _TimerItemState();
}

class _TimerItemState extends State<TimerItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(22),
          child: Text(
            'Label',
            style: TextStyle(fontSize: 24),
          ),
        ),
        CircleAvatar(
          radius: 150,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              SizedBox(height: 40),
              Text(
                '10:19:45',
                style: TextStyle(fontSize: 60),
              ),
              TextButton(
                onPressed: null,
                child: Text(
                  'Reset',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
