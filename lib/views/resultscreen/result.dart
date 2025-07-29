import 'package:flutter/material.dart';

import 'package:quizappwork/views/dummy/dummy.dart';
import 'package:quizappwork/views/dummy/indexclick.dart';
import 'package:quizappwork/views/randomquiz/randomquizscreen.dart';
import 'package:quizappwork/views/selectedquiz/selectedquiz.dart';

class Result extends StatefulWidget {
  const Result({super.key});

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 50),
          Text(Indexclick.correctanswer.toString()),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 20,
            children: List.generate(
              3,
              (index) => Padding(
                padding: EdgeInsets.only(bottom: index == 1 ? 50 : 0),
                child: Icon(
                  Icons.star,
                  size: index == 1 ? 100 : 60,
                  color:
                      index < _starcolor() ? Colors.amberAccent : Colors.grey,
                ),
              ),
            ),
          ),
          Text(
            'Congratulations',
            style: TextStyle(color: Colors.amber, fontSize: 35),
          ),
          Text('Your Score', style: TextStyle(color: Colors.white)),
          Text(
            '${Indexclick.correctanswer}/${Dummy.selection[Indexclick.gridclickindex].length}',
            style: TextStyle(color: Colors.amber, fontSize: 40),
          ),
          InkWell(
            onTap: () {
              Indexclick.correctanswer = 0;
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => Selectedquiz()),
              );
              setState(() {});
            },
            child: Container(
              margin: EdgeInsets.all(20),

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  spacing: 10,
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Icon(Icons.replay_sharp, color: Colors.black),
                    Text(
                      'Retry',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Indexclick.correctanswer = 0;
              Indexclick.gridclickindex = 0;
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => Random()),
              );
              setState(() {});
            },
            child: Container(
              margin: EdgeInsets.all(20),

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  spacing: 10,
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Icon(Icons.replay_sharp, color: Colors.black),
                    Text(
                      'Main Screen',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  int _starcolor() {
    if (Indexclick.correctanswer *
            100 /
            Dummy.selection[Indexclick.gridclickindex].length <
        35) {
      return 1;
    } else if (Indexclick.correctanswer *
            100 /
            Dummy.selection[Indexclick.gridclickindex].length <
        70) {
      return 2;
    }
    return 3;
  }
}
