import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
   GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Gradients")),
      // body:Container(
      //   decoration: BoxDecoration(gradient: LinearGradient(colors:[Colors.red,Colors.blue,Colors.green,Colors.purple], begin:Alignment.topLeft, end:Alignment.bottomRight ),
       
       
      //    ),
      //     body:Container(
      //   decoration: BoxDecoration(gradient: RadialGradient(colors:[Colors.red,Colors.blue,Colors.green,Colors.purple], ),
      //    ),
      // ),
       body:Container(
        decoration: BoxDecoration(gradient: SweepGradient(colors:[Colors.red,Colors.blue,Colors.green,Colors.purple]  ),
       
       
         ),
     ) );

  }
  
}

