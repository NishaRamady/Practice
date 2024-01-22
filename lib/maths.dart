import 'package:flutter/material.dart';
import 'package:practice/mathsdisplay.dart';

class MathsScreen2 extends StatefulWidget {
  const MathsScreen2({super.key});

  @override
  State<MathsScreen2> createState() => _MathsScreen2State();
}

class _MathsScreen2State extends State<MathsScreen2> {
  TextEditingController num1Controller = TextEditingController();
  TextEditingController num2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Arithmetic Operations"),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                controller: num1Controller,
                decoration: InputDecoration(
                    label: Text("Enter first number"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    constraints: BoxConstraints(maxWidth: 250, maxHeight: 100)),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: num2Controller,
                decoration: InputDecoration(
                    label: Text("Enter second  number"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    constraints: BoxConstraints(maxWidth: 250, maxHeight: 100)),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MathsDisplayScreen(num1:int.parse (num1Controller.text),num2: int.parse(num2Controller.text),),
                      ));
                },
                child: Text("ADD"),
              )
            ],
          ),
        ));
  }
}
