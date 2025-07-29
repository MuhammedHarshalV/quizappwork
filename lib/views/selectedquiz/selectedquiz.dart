import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';

import 'package:quizappwork/views/dummy/dummy.dart';
import 'package:quizappwork/views/dummy/indexclick.dart';
import 'package:quizappwork/views/resultscreen/result.dart';

class Selectedquiz extends StatefulWidget {
  const Selectedquiz({super.key});

  @override
  State<Selectedquiz> createState() => _SelectedquizState();
}

class _SelectedquizState extends State<Selectedquiz> {
  CountDownController controller = CountDownController();

  int selectedquest = 0;
  int? clickedindex;
  int linearvalue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          spacing: 5,
          children: [
            SizedBox(height: 50),
            _linearindicator(),
            CircularCountDownTimer(
              duration: 30,
              initialDuration: 0,
              controller: controller,
              width: 50,
              //MediaQuery.of(context).size.width / 2,
              height: 50,

              // MediaQuery.of(context).size.height / 2,
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

              onComplete: () {
                if (selectedquest <
                    Dummy.selection[Indexclick.gridclickindex].length - 1) {
                  selectedquest++;
                  linearvalue++;
                  clickedindex = null;

                  controller.restart(duration: 30);

                  setState(() {});
                } else {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Result()),
                  );
                  setState(() {});
                }
              },

              timeFormatterFunction: (defaultFormatterFunction, duration) {
                if (duration.inSeconds == 0) {
                  return "Start";
                } else {
                  return Function.apply(defaultFormatterFunction, [duration]);
                }
              },
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image:
                          clickedindex != null
                              ? _bgimage(clickedindex!)
                              : AssetImage('assets/img4.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      Dummy
                          .selection[Indexclick.gridclickindex][selectedquest]
                          .questios,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            Container(
              child: Column(
                spacing: 3,
                children: List.generate(
                  4,
                  (index) => InkWell(
                    onTap: () {
                      if (clickedindex == null) {
                        clickedindex = index;
                        if (clickedindex ==
                            Dummy
                                .selection[Indexclick
                                    .gridclickindex][selectedquest]
                                .answerindex) {
                          Indexclick.correctanswer++;
                        }
                        setState(() {});
                      }
                      ;
                    },
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          width: 2,
                          color: _bordercolor(index),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Row(
                          children: [
                            Text(
                              Dummy
                                  .selection[Indexclick
                                      .gridclickindex][selectedquest]
                                  .options[index],
                              style: TextStyle(
                                color: _bordercolor(index),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Spacer(),
                            _circle(index),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            _nextbutton(context),
          ],
        ),
      ),
    );
  }

  Row _linearindicator() {
    return Row(
      spacing: 10,
      children: [
        Expanded(
          child: LinearProgressIndicator(
            value:
                linearvalue / Dummy.selection[Indexclick.gridclickindex].length,
            color: Colors.amber,
            backgroundColor: Colors.grey,
          ),
        ),
        Text(
          '$linearvalue/${Dummy.selection[Indexclick.gridclickindex].length}',
          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  InkWell _nextbutton(BuildContext context) {
    return InkWell(
      onTap: () {
        if (selectedquest <
            Dummy.selection[Indexclick.gridclickindex].length - 1) {
          selectedquest++;
          linearvalue++;
          clickedindex = null;
          controller.restart(duration: 30);
          setState(() {});
        } else {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => Result()),
          );
          setState(() {});
        }
      },
      child: Container(
        height: 30,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.blue,
        ),
        child: Center(
          child: Text('Next', style: TextStyle(color: Colors.white)),
        ),
      ),
    );
  }

  Color _bordercolor(int index) {
    if (clickedindex != null &&
        index ==
            Dummy
                .selection[Indexclick.gridclickindex][selectedquest]
                .answerindex) {
      return Colors.blue;
    }
    if (index == clickedindex) {
      if (clickedindex !=
          Dummy
              .selection[Indexclick.gridclickindex][selectedquest]
              .answerindex) {
        return Colors.red;
      }
    }
    return Colors.grey;
  }

  Widget _circle(int index) {
    if (clickedindex != null &&
        index ==
            Dummy
                .selection[Indexclick.gridclickindex][selectedquest]
                .answerindex) {
      return Icon(Icons.check_circle, color: Colors.blue);
    }
    if (index == clickedindex) {
      if (clickedindex !=
          Dummy
              .selection[Indexclick.gridclickindex][selectedquest]
              .answerindex) {
        return Icon(Icons.add_circle_outline_sharp, color: Colors.red);
      }
    }
    return Icon(Icons.circle_outlined, color: Colors.grey);
  }

  AssetImage _bgimage(int index) {
    if (clickedindex != null &&
        index ==
            Dummy
                .selection[Indexclick.gridclickindex][selectedquest]
                .answerindex) {
      return AssetImage('assets/img2.jpg');
    }
    if (index == clickedindex) {
      if (clickedindex !=
          Dummy
              .selection[Indexclick.gridclickindex][selectedquest]
              .answerindex) {
        return AssetImage('assets/img1.jpg');
      }
    }
    return AssetImage('assets/img4.jpg');
  }
}
