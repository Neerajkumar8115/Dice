import 'dart:async';

import 'package:dice/dice.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(milliseconds: 200),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const Dice())));
  }

  Widget build(BuildContext context) {
    return const Center(
      child: Hero(
        tag: Dice,
        child: Text(
          'Welcome',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
