import 'package:flutter/material.dart';
import 'package:quizappwork/splash.dart';
import 'package:quizappwork/views/countdown.dart';
import 'package:quizappwork/views/randomquiz/randomquizscreen.dart';
import 'package:quizappwork/views/resultscreen/result.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Splash());
  }
}
