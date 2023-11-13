import 'package:flutter/material.dart';
import 'package:myapp/dice_roller.dart';

// import 'package:myapp/styled_text.dart';

// Alignment startalign=Alignment.topLeft;
// var startalign=Alignment.bottomCenter;
// var startalign;
// final startalign=Alignment.bottomCenter;
// const startalign=Alignment.bottomCenter;
// there are differnet ways, we can initialise a variable and we can simply make use of this varible whenever & wherever needed in the program

class ContainerGradient extends StatelessWidget {
  // we can even create a list of color, and use it to take the gradient values
  final List<Color> color;
  const ContainerGradient(this.color, {super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: color,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}

























// class ContainerGradient extends StatelessWidget {
//   final List<Color>color;
//   const ContainerGradient(this.color,{super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: const BoxDecoration(
//         gradient: LinearGradient(
//           colors: [
//             Colors.black,
//             Colors.white60,
//           ],
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//         ),
//       ),
//       child: const Center(
//         child: StyleText('hello friend'),
//       ),
//     );
//   }
// }