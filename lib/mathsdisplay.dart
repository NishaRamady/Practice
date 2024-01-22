import 'package:flutter/material.dart';

class MathsDisplayScreen extends StatelessWidget {
  MathsDisplayScreen({super.key, required this.num1, required this.num2});

  final int num1;
  final int num2;
  Add() {
    return num1 + num2;
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      // body: Center(child: Text("The result is ${Add()}:")),
      body: Center(child: Text("The result is ${num1+num2}:")),
    );
  }
}
