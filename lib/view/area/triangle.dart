import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';

class TriangleArea extends StatefulWidget {
  const TriangleArea({super.key});

  @override
  State<TriangleArea> createState() => _TriangleAreaState();
}

class _TriangleAreaState extends State<TriangleArea> {
  double? result;
  TextEditingController num1Controller = TextEditingController();
  TextEditingController num2Controller = TextEditingController();
  final intFormatter = FilteringTextInputFormatter.digitsOnly;

  squareArea() {
    String num1 = num1Controller.text;
    String num2 = num2Controller.text;
    setState(() {
      result = 0.5 * int.parse(num1) * int.parse(num2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple,
        appBar: AppBar(
          title: const Text("Area of a triangle"),
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 12,
              ),
              Lottie.asset('assets/images/triangle.json', height: 150),
              const SizedBox(
                height: 12,
              ),
              const Text("Enter the base length",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20)),
              const SizedBox(height: 12),
              TextField(
                style: const TextStyle(color: Colors.white),
                 keyboardType: TextInputType.number,
                inputFormatters: [intFormatter],
                controller: num1Controller,
                decoration: InputDecoration(
                    constraints: const BoxConstraints(maxWidth: 200),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
              ),
               const SizedBox(height: 12),
               const Text("Enter the height",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20)),
              
              const SizedBox(height: 12),
                TextField(
                style: const TextStyle(color: Colors.white),
                 keyboardType: TextInputType.number,
                inputFormatters: [intFormatter],
                controller: num2Controller,
                decoration: InputDecoration(
                    constraints: const BoxConstraints(maxWidth: 200),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
              ),
              const SizedBox(height: 12),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepOrange),
                  onPressed: squareArea,
                  child: const Text("Find area")),
              const SizedBox(height: 12),
              result != null
         ? Text(
        "The area of the triangle is $result square cm",
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      )
       : Container(),
             
                      
            ],
          ),
        ));
  }
}

