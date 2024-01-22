import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  const DropDown({super.key});

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  String _dropdownvalue = "Apple";
  void dropdownCallback(String? selectedValue) {
    if (selectedValue is String) {
      setState(() {
        _dropdownvalue = selectedValue;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: DropdownButton(
          items: [
            DropdownMenuItem(
          value: "Apple",
          child: Text("Apple"),
            ),
            DropdownMenuItem(
          child: Text("Orange"),
          value: "Orange",
            ),
            DropdownMenuItem(
          child: Text("Grape"),
          value: "Grape",
            ),
            DropdownMenuItem(
          child: Text("Pineapple"),
          value: "Pineapple",
            ),
          ],
          value: _dropdownvalue,
          onChanged: dropdownCallback,
          ),
        ));
  }
}
