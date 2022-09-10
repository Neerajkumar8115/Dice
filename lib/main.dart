import 'package:dice/dice.dart';
import 'package:flutter/material.dart';
import 'package:dice/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // @override
  // void initState() {
  //   super.initState();
  //   navigate();
  // }

  // navigate() async {
  //   await Future.delayed(const Duration(milliseconds: 5000), () {});
  //   // ignore: use_build_context_synchronously
  //   Navigator.pushReplacement(
  //       context, MaterialPageRoute(builder: ((context) => const Dice())));
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dice',
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text("Dice"),
          centerTitle: true,
        ),
        body: Dice(),
      ),
    );
  }
}
