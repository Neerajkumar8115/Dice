import 'dart:math';

import 'package:flutter/material.dart';

class Dice extends StatefulWidget {
  const Dice({super.key});

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  // var number = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
  var leftDiceNumber = 1;
  var color = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  leftDiceNumber = Random().nextInt(6) + 1;
                  color = Random().nextInt(2) + 1;
                });
              },
              child: Image.asset('images/Dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  leftDiceNumber = Random().nextInt(6) + 1;
                  color = Random().nextInt(2) + 1;
                });
              },
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('images/color$color.png'),
                  ),
                ),
              ),
            ),
          ),
          // Expanded(
          //   child: TextButton(
          //     onPressed: () {
          //       setState(() {
          //         number = (Random().nextInt(9) + 1) as List<String>;
          //       });
          //     },
          //     child: Text('N $number'),
          //   ),
          // ),
        ],
      ),
    );
  }
}
