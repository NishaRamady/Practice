import 'package:flutter/material.dart';
import 'package:practice/reusablecontainer.dart';

class ReusableScreen extends StatelessWidget {
ReusableScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Center(child: ReusableContainer()),
    );
  }
}