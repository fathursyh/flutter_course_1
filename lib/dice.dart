import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoll extends StatefulWidget {
  const DiceRoll({super.key});
  @override
  State<DiceRoll> createState() {
    return _DiceRollState();
  }
}

class _DiceRollState extends State<DiceRoll> {
  final buatRandom = Random();

  List<String> stateDice = [
    'assets/dice-images/dice-1.png',
    'assets/dice-images/dice-2.png',
    'assets/dice-images/dice-3.png',
    'assets/dice-images/dice-4.png',
    'assets/dice-images/dice-5.png',
    'assets/dice-images/dice-6.png',
  ];

  var i = 0;
  void rollDice() {
    setState(() {
      i = buatRandom.nextInt(stateDice.length);
    });
  }

  @override
  Widget build(context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Image.asset(
        stateDice[i],
        width: 200,
      ),
      const SizedBox(
        height: 30,
      ),
      ElevatedButton(
          style: const ButtonStyle(
              fixedSize: MaterialStatePropertyAll(
            Size.fromHeight(60),
          )),
          onPressed: rollDice,
          child: const Text(
            'Roll Dice!',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ))
    ]);
  }
}
