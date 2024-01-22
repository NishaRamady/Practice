import 'package:flutter/material.dart';

class BMIdisplayScreen extends StatefulWidget {
  const BMIdisplayScreen(
      {super.key, required this.weight, required this.height});
  final int weight;
  final int height;

  @override
  State<BMIdisplayScreen> createState() => _BMIdisplayScreenState();
}

class _BMIdisplayScreenState extends State<BMIdisplayScreen> {
  double? BMI;

  BMIcalulate() {
    BMI = widget.weight / (widget.height / 100 * widget.height / 100);
  }

  @override
  void initState() {
    BMIcalulate();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "your BMI is :${BMI!.toStringAsFixed(2)}",
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
            ),
          ),
          if (BMI! < 18.5)
            Text(
              "You are Underweight",
              style: TextStyle(fontSize: 18, color: Colors.purple),
            ),
          if (BMI! > 18.5 && BMI! < 24.9)
            Text(
              "You are healthy",
              style: TextStyle(fontSize: 18, color: Colors.green),
            ),
          if (BMI! > 25.0)
            Text(
              "You are Overweight",
              style: TextStyle(fontSize: 18, color: Colors.red),
            )
        ],
      ),
    );
  }
}
