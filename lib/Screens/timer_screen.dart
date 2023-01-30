import 'package:custom_timer/custom_timer.dart';
import 'package:flutter/material.dart';

class TimerScreen extends StatefulWidget {
  const TimerScreen({Key? key}) : super(key: key);

  @override
  State<TimerScreen> createState() => _TimerScreenState();
}

class _TimerScreenState extends State<TimerScreen> {
  int _counter = 1;

  _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  final CustomTimerController _controller = CustomTimerController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xFF2D2F41),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomTimer(
              controller: _controller,
              begin: Duration(minutes: _counter),
              end: Duration(),
              builder: (time) {
                return Text(
                    "${time.hours}:${_counter}:${time.seconds}.${time.milliseconds}",
                    style: const TextStyle(
                      fontSize: 24.0,
                    ));
              }),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MaterialButton(
                onPressed: () {
                  _controller.start();
                },
                child: Text('Start'),
                color: Colors.green,
              ),
              MaterialButton(
                onPressed: () {
                  _controller.pause();
                },
                child: Text('Pause'),
                color: Colors.teal,
              ),
              MaterialButton(
                onPressed: () {
                  _controller.reset();
                },
                child: Text('Reset'),
                color: Colors.red,
              )
              // RaisedButton(
              //   onPressed: () {
              //     _controller.reset();

              //   },
              //   child: Text('Reset'),
              //   color: Colors.red,
              // ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Image.asset('assets/add_alarm.png'),
      ),
    );
  }
}
