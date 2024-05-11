import "package:flutter/material.dart";
import 'package:roll_dice_apk/dice_roller.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
   const GradientContainer(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;
  
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        )),
        child: const Center(
          child:  DiceRoller(),
        ));
  }
}

/*class GradientContainer extends StatelessWidget 
{
  const GradientContainer({required this.colors,super.key});

  final List<Color> colors;
  @override
  Widget build(BuildContext context) {
    return Container( 
          decoration:  BoxDecoration(
            gradient: LinearGradient(
              colors: colors ,
              begin: startAlignment,
              end: endAlignment,        
            )
          ),
          child: const Center(
            child: StyledText("Hello Worlddd..!"),
          ),
        );
  }
}



//[ Color.fromARGB(255, 58, 4, 206),
         //              Color.fromARGB(255, 235, 202, 160),
         //             ],*/