import 'dart:math';
import 'package:flutter/material.dart';

class Dice extends StatefulWidget {
  const Dice({super.key});

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  var number = 1;
  var leftDiceNumber = 1;
  var color = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Center(
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    leftDiceNumber = Random().nextInt(6) + 1;
                    color = Random().nextInt(2) + 1;
                    number = Random().nextInt(9);
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
                    number = Random().nextInt(9);
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
            Expanded(
              child: TextButton(
                // onHover: Colors.white,

                onPressed: () {
                  setState(() {
                    leftDiceNumber = Random().nextInt(6) + 1;
                    color = Random().nextInt(2) + 1;
                    number = Random().nextInt(9);
                  });
                },
                child: Container(
                  color: Colors.white,
                  height: 60,
                  width: 60,
                  child: Text(
                    '$number',
                    style: const TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  alignment: Alignment.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
