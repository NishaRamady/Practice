import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainerScreen extends StatelessWidget {
  const GradientContainerScreen({super.key, required this.colors});

  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
    decoration:
    BoxDecoration(
        gradient: LinearGradient(
      colors: colors,
      begin: startAlignment,
      end: endAlignment,
    )
    )
    );
  }
}
