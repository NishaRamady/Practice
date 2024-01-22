import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';

class RectangleArea extends StatefulWidget {
  const RectangleArea({super.key});

  @override
  State<RectangleArea> createState() => _RectangleAreaState();
}

class _RectangleAreaState extends State<RectangleArea> {
  int? result;
  TextEditingController num1Controller = TextEditingController();
  TextEditingController num2Controller = TextEditingController();
  final intFormatter = FilteringTextInputFormatter.digitsOnly;

  squareArea() {
    String num1 = num1Controller.text;
    String num2 = num2Controller.text;
    setState(() {
      result = int.parse(num1) * int.parse(num2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple,
        appBar: AppBar(
          title: const Text("Area of a rectangle"),
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 12,
              ),
              Lottie.asset('assets/images/rectangle.json', height: 150),
              const SizedBox(
                height: 12,
              ),
              const Text("Enter the length",
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
               const Text("Enter the breath",
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
        "The area of the rectangle is $result square cm",
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

