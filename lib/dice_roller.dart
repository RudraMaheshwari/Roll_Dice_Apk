import 'package:flutter/material.dart';
import 'dart:math';
final randomizer= Random();


class DiceRoller extends StatefulWidget{
const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}


class _DiceRollerState extends State<DiceRoller>{
var currentDiceRoll=2;
void rollDice() {
  setState((){
    currentDiceRoll =randomizer.nextInt(6)+1;//0<>5;
  });
}

  @override
  Widget build(context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
            Image.asset(
              'assets/images/dice-$currentDiceRoll.png',
              width: 200,
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: rollDice,
              //() {
              //you can define any code here option 1
              //}
              style: TextButton.styleFrom(
                  //padding: const EdgeInsets.only(top: 20),
                  foregroundColor: const Color.fromARGB(255, 6, 160, 236),
                  textStyle: const TextStyle(fontSize: 28)),
              child: const Text("Roll Dice"),
            )
          ]);
  }
}
