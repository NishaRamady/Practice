import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';

class SquareArea extends StatefulWidget {
  const SquareArea({super.key});

  @override
  State<SquareArea> createState() => _SquareAreaState();
}

class _SquareAreaState extends State<SquareArea> {
  int? result;
  TextEditingController numController = TextEditingController();
  final intFormatter = FilteringTextInputFormatter.digitsOnly;

  squareArea() {
    String num = numController.text;
    setState(() {
      result = int.parse(num) * int.parse(num);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple,
        appBar: AppBar(
          title: const Text("Area of a Square"),
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 12,
              ),
              Lottie.asset('assets/images/square.json', height: 150),
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
                controller: numController,
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
        "The area of the square is $result square cm",
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

