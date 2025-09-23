import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quizappwork/controler/providercontroler.dart';
import 'package:quizappwork/splash.dart';

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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Providercontroler()),
      ],
      child: MaterialApp(debugShowCheckedModeBanner: false, home: Splash()),
    );
  }
}
