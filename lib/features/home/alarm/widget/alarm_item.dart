import 'package:clock_app/features/home/alarm/widget/circle_day.dart';
import 'package:flutter/material.dart';

class AlarmItem extends StatefulWidget {
  const AlarmItem({Key? key}) : super(key: key);

  @override
  _AlarmItemState createState() => _AlarmItemState();
}

class _AlarmItemState extends State<AlarmItem> {
  bool _expanded = false;
  bool _enabled = false;

  _toggleCard() {
    setState(() {
      _expanded = !_expanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      child: InkWell(
        onTap: _toggleCard,
        child: Stack(
          children: [
            Positioned(
              right: 0,
              child: IconButton(
                onPressed: _toggleCard,
                icon: const Icon(Icons.keyboard_arrow_up),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: Text('Label'),
                  ),
                  const Text(
                    '3:10PM',
                    style: TextStyle(fontSize: 35),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Every day'),
                      Switch(
                        value: _enabled,
                        onChanged: (value) {
                          setState(() {
                            _enabled = value;
                          });
                        },
                      )
                    ],
                  ),
                  _expanded == true
                      ? Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                CircleDay(day: 'S'),
                                CircleDay(day: 'M'),
                                CircleDay(day: 'T'),
                                CircleDay(day: 'W'),
                                CircleDay(day: 'T'),
                                CircleDay(day: 'F'),
                                CircleDay(day: 'S')
                              ],
                            ),
                            ListTile(
                              leading: const Icon(Icons.volume_mute_outlined),
                              title: const Text('Silent'),
                              onTap: () {},
                              contentPadding:
                                  const EdgeInsets.only(left: 2, top: 5),
                            ),
                            ListTile(
                              leading: const Icon(Icons.vibration),
                              title: const Text('Vibrate'),
                              trailing: const Icon(Icons.check_circle),
                              onTap: () {},
                              contentPadding: const EdgeInsets.only(left: 2),
                            ),
                            ListTile(
                              leading: const Icon(Icons.delete_outline),
                              title: const Text('Delete'),
                              onTap: () {},
                              contentPadding: const EdgeInsets.only(left: 2),
                            ),
                          ],
                        )
                      : Container()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
