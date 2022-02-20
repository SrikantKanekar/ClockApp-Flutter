import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TimerInput extends StatelessWidget {
  const TimerInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Padding(
          padding: EdgeInsets.all(25),
          child: Text(
            '00h 00m 00s',
            style: TextStyle(
              fontSize: 50,
            ),
          ),
        ),
        Container(
          height: 350,
          padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 16),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 2,
              crossAxisSpacing: 45,
              crossAxisCount: 3,
            ),
            itemCount: 12,
            itemBuilder: (BuildContext context, int index) {
              return CircleAvatar(
                backgroundColor: Colors.black12,
                radius: 6,
                child: Text((index + 1).toString()),
              );
            },
          ),
        ),
      ],
    );
  }
}
