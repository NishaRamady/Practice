import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:practice/view/area/circlearea.dart';
import 'package:practice/view/area/rectanglearea.dart';
import 'package:practice/view/area/squarearea.dart';
import 'package:practice/view/area/triangle.dart';

class AreaScreen extends StatelessWidget {
  const AreaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        title: const Text("Find the area"),
        ),
         body:Center(
           child: SingleChildScrollView(
             child: Column(
              children: [
                const SizedBox(height:20),
                const Text("Click on a shape to find its area",style: 
                TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                GestureDetector(
                  onTap: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => CircleArea()));
                  },
                  child: Lottie.asset('assets/images/circle.json',height: 150)),
                GestureDetector(
                  onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context) => SquareArea()));
                  },
                  child: Lottie.asset('assets/images/square.json',height:150)),
               
                GestureDetector(
                  onTap: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context) => RectangleArea()));
                  },
                  child: Lottie.asset('assets/images/rectangle.json',height: 150)),
                 GestureDetector(
                  onTap:(){
                 Navigator.push(context, MaterialPageRoute(builder: (context) => TriangleArea()));
                  },
                  child: Lottie.asset('assets/images/triangle.json',height: 120)),
              ],
                 ),
           ),
         ),
    );
  }
}