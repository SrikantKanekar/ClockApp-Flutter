import 'package:clock_app/features/home/timer/widget/timer_input.dart';
import 'package:clock_app/features/home/timer/widget/timer_item.dart';
import 'package:flutter/material.dart';

class TimerPage extends StatefulWidget {
  const TimerPage({Key? key}) : super(key: key);

  @override
  State<TimerPage> createState() => _TimerPageState();
}

class _TimerPageState extends State<TimerPage> {
  bool _inputPage = false;
  
  void _togglePage() {
    setState(() {
      _inputPage = !_inputPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _inputPage
          ? const TimerInput()
          : PageView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 3,
              itemBuilder: (ctx, index) {
                return const TimerItem();
              },
            ),
      floatingActionButton: _inputPage
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                const SizedBox(width: 30),
                FloatingActionButton(
                  onPressed: _togglePage,
                  child: Icon(Icons.add),
                ), //button first
                FloatingActionButton.large(
                  onPressed: _togglePage,
                  backgroundColor: Colors.lightBlue,
                  child: Icon(Icons.add),
                ),
                const SizedBox(width: 90),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                const SizedBox(width: 30),
                FloatingActionButton(
                  onPressed: () {},
                  child: Icon(Icons.add),
                ), //button first
                FloatingActionButton.large(
                  onPressed: () {},
                  backgroundColor: Colors.lightBlue,
                  child: Icon(Icons.add),
                ), // button second
                FloatingActionButton(
                  onPressed: _togglePage,
                  child: Icon(Icons.add),
                ),
                const SizedBox(width: 0),
              ],
            ),
    );
  }
}
