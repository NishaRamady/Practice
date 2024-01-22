import 'package:flutter/material.dart';
import 'package:practice/bmidisplay.dart';

class BMIScreen extends StatefulWidget {
  const BMIScreen({super.key});

  @override
  State<BMIScreen> createState() => _BMIScreenState();
}

class _BMIScreenState extends State<BMIScreen> {
  final _WeightController = TextEditingController();
  final _heightController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar:AppBar(
        title: Text("BMI CALCULATOR"),
       ),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
          TextFormField(
            controller: _WeightController,
            decoration: InputDecoration(
                label: Text(
                  "Enter weight in Kg",
                ),
                constraints: BoxConstraints(maxHeight: 100, maxWidth: 350),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)))),
          ),
          SizedBox(height:50),
          TextFormField(
            controller: _heightController,
            decoration: InputDecoration(
                label: Text(
                  "Enter height in cm",
                ),
                constraints: BoxConstraints(maxHeight: 100, maxWidth: 350),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)))),
          ),
          SizedBox(height:50),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BMIdisplayScreen(
                          weight:int.parse(_WeightController.text) , height:int.parse(_heightController.text)),
                    ));
              },
              child: Text("Calculate BMI"))
              ],
            ),
        ));
  }
}
