import 'package:flutter/material.dart';
import 'package:practice/gradientcontainer.dart';

class GradientContainerMainScreen extends StatelessWidget {
  const GradientContainerMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:GradientContainerScreen(
        colors:[Colors.red,Colors.blue,Colors.orange] )
    );
  }
}