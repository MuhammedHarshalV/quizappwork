import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:quizappwork/views/selectedquiz/selectedquiz.dart';

class Countdown extends StatefulWidget {
  const Countdown({super.key});

  @override
  State<Countdown> createState() => _CountdownState();
}

class _CountdownState extends State<Countdown> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularCountDownTimer(
          duration: 30,
          initialDuration: 0,
          controller: CountDownController(),
          width: 50,
          //MediaQuery.of(context).size.width / 2,
          height: MediaQuery.of(context).size.height / 2,
          ringColor: Colors.grey,
          ringGradient: null,
          fillColor: Colors.blue,
          fillGradient: null,
          backgroundColor: Colors.black,
          backgroundGradient: null,
          strokeWidth: 15.0,
          strokeCap: StrokeCap.round,
          textStyle: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
          textFormat: CountdownTextFormat.S,
          isReverse: false,
          isReverseAnimation: false,
          isTimerTextShown: true,
          autoStart: true,

          onComplete: () {},

          timeFormatterFunction: (defaultFormatterFunction, duration) {
            if (duration.inSeconds == 0) {
              return "Start";
            } else {
              return Function.apply(defaultFormatterFunction, [duration]);
            }
          },
        ),
      ),
    );
  }
}
