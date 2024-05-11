import "package:flutter/material.dart";
import 'package:roll_dice_apk/gradient_container.dart';

void main() //defining a function
{
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
            Color.fromARGB(255, 94, 6, 236), Color.fromARGB(26, 206, 178, 178)),
      ),
    ),
  ); //calling a function
}
