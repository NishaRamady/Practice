import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SumScreen extends StatefulWidget {
  const SumScreen({super.key});

  @override
  State<SumScreen> createState() => _SumScreenState();
}

class _SumScreenState extends State<SumScreen> {
  int? num1;
  double? num2;
  double? sum;
  TextEditingController num1Controller = TextEditingController();
  TextEditingController num2Controller = TextEditingController();
  final intFormatter = FilteringTextInputFormatter.digitsOnly;
  final doubleFormatter =
      FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}'));

  add() {
    setState(() {
      sum = int.parse(num1Controller.text) + double.parse(num2Controller.text);
    });
  }

  clear() {
    setState(() {
      num1Controller.clear();
      num2Controller.clear();
      sum = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue.shade100,
        appBar: AppBar(title: const Text("Add two numbers")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Enter first number",
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 12),
              TextField(
                
                inputFormatters: [intFormatter],
                controller: num1Controller,
                decoration: InputDecoration(
                  // label:const Text("Enter an integer  ") ,
                  constraints: const BoxConstraints(maxWidth: 200),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
              ),
              const SizedBox(height: 12),
              const Text(
                "Enter Second number",
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 12),
              TextField(
                inputFormatters: [doubleFormatter],
                controller: num2Controller,
                decoration: InputDecoration(
                  // label:const Text("Enter a double value"),
                    constraints: const BoxConstraints(maxWidth: 200),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
              ),
              const SizedBox(height: 12),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: add,
                  child: const Text("Result")),
              const SizedBox(height: 12),
              if (sum != null)
                Text(
                  "Sum is ${sum.toString()}",
                  style: const TextStyle(fontSize: 18),
                ),
              const SizedBox(height: 20),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurpleAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: clear,
                  child: const Text("Reset")),
              const SizedBox(height: 12),
            ],
          ),
        ));
  }
}
