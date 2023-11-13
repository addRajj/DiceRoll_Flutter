import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerstate();
  }
}

class _DiceRollerstate extends State<DiceRoller> {
  var activerDiceImage = 'assets/images/dice-1.png';
  void rolldice() {
    var rolldicee = Random().nextInt(6) + 1;
    setState(() {
      activerDiceImage = 'assets/images/dice-$rolldicee.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(activerDiceImage),
        const SizedBox(
          height: 20,
        ),
        TextButton(
            onPressed: rolldice,
            style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 28)),
            child: const Text(
              'roll dice',
            ))
      ],
    );
  }
}
