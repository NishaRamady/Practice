import 'package:flutter/material.dart';

class CheckboxListTileScreen extends StatefulWidget {
  const CheckboxListTileScreen({super.key});

  @override
  State<CheckboxListTileScreen> createState() => _CheckboxListTileScreenState();
}

class _CheckboxListTileScreenState extends State<CheckboxListTileScreen> {
  bool _checked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CheckboxListTile(
          
          title: Text("Check ! Mate?"),
          secondary: Icon(Icons.beach_access),
          controlAffinity: ListTileControlAffinity.platform,
          value: _checked,
          onChanged: (bool? value) {
            setState(() {
              _checked = value!;
            });
          },
           activeColor: Colors.green,
          checkColor: Colors.red,
         
        ),
      ),
    );
  }
}


