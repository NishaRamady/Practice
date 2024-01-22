import 'package:flutter/material.dart';

class MathsScreen extends StatefulWidget {
  MathsScreen({super.key});

  @override
  State<MathsScreen> createState() => _MathsScreenState();
}

class _MathsScreenState extends State<MathsScreen> {
  final _num1Controller = TextEditingController();
  final _num2Controller = TextEditingController();
  // bool isButtonPressed = false;

  @override
  void dispose() {
    _num1Controller.dispose();
    _num2Controller.dispose();
    super.dispose();
  }

  double? result;
  double num1 = 0;
  double num2 = 0;

  Add() {
    num1 = double.parse(_num1Controller.text);
    num2 = double.parse(_num2Controller.text);
    result = num1 + num2;
    setState(() {});
  }

  Subtract() {
    num1 = double.parse(_num1Controller.text);
    num2 = double.parse(_num2Controller.text);
    result = num1 - num2;
    setState(() {});
  }

  Multiply() {
    num1 = double.parse(_num1Controller.text);
    num2 = double.parse(_num2Controller.text);
    result = num1 * num2;
    setState(() {});
  }

  Divide() {
    num1 = double.parse(_num1Controller.text);
    num2 = double.parse(_num2Controller.text);
    if (num2 != 0) {
      result = num1 / num2;
      print(result);
    } else {
      showDialog(
        context: context,
        builder: (context) =>
            AlertDialog(title: Text("Division by zero not possible")),
      );
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text("Mathematical Operations"),
        ),
        body: Center(
          child: SingleChildScrollView(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              TextFormField(
                  controller: _num1Controller,
                  decoration: InputDecoration(
                      label: Text("Enter first number"),
                      constraints:
                          BoxConstraints(maxWidth: 200, maxHeight: 100),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)))),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                  controller: _num2Controller,
                  decoration: InputDecoration(
                      label: Text("Enter Second number"),
                      constraints:
                          BoxConstraints(maxWidth: 200, maxHeight: 100),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)))),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(onPressed: () => Add(), child: Text("Add")),
              ElevatedButton(
                  onPressed: () => Subtract(), child: Text("Subtract")),
              ElevatedButton(
                  onPressed: () => Multiply(), child: Text("Multiply")),
              ElevatedButton(onPressed: () => Divide(), child: Text("Divide")),
              SizedBox(height: 20),
              // // if (result != null)
              Visibility(
                visible: result != null,
                //  && isButtonPressed == false,
                child: Text(
                  "result is $result",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    _num1Controller.clear();
                    _num2Controller.clear();
                    result = null;
                    setState(() {});
                  },
                  child: Text("Reset")),
            ]),
          ),
        ));
  }
}
