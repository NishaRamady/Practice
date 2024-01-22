import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Divisibility extends StatefulWidget {
  const Divisibility({super.key});

  @override
  State<Divisibility> createState() => _DivisibilityState();
}

class _DivisibilityState extends State<Divisibility> {
  String result = "";

  TextEditingController numController = TextEditingController();
  final intFormatter = FilteringTextInputFormatter.digitsOnly;

  // checkCondition() {
  //   String inputNumber = numController.text;
  //   if (inputNumber.isNotEmpty) {
  //     int num = int.parse(numController.text);
  //     setState(() {
  //       result = (num % 2 == 0) ? 'true' : 'false';
  //     });
  //   } else {
  //     setState(() {
  //       result = "";
  //     });

  //   }
  // }

  checkCondition() {
    int num = int.parse(numController.text);
    setState(() {
      result = (num % 10 == 0) ? 'true' : 'false';
    });
    
  }

  reset() {
    setState(() {
        numController.clear();
    result = "";
    });
  
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.brown,
        appBar: AppBar(
          title: const Text("Divisibility check"),
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              const Text("Enter a number to see if it is divisible by 10",
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
                  onPressed: checkCondition,
                  child: const Text("Check")),
              const SizedBox(height: 12),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
                  onPressed: reset,
                  child: const Text("Reset")),
                    const SizedBox(height: 12),
              // result.isNotEmpty
              //     ? (result == 'true' ? Text("True") : Text("False"))
              //     : Container(),
              if (result.isNotEmpty && result == "true")
                const Text(
                  'true',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              if (result.isNotEmpty && result == "false")
                const Text(
                  'false',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              if (result.isEmpty) Container(),
            ],
          ),
        ));
  }
}
