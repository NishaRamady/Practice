import 'package:flutter/material.dart';

class AnimatedPaddingExample extends StatefulWidget {
  const AnimatedPaddingExample({super.key});

  @override
  State<AnimatedPaddingExample> createState() => _AnimatedPaddingExampleState();
}

class _AnimatedPaddingExampleState extends State<AnimatedPaddingExample> {
  double padValue = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
            style:
                ElevatedButton.styleFrom(foregroundColor: Colors.orangeAccent),
            onPressed: () {
              setState(() {
                padValue = padValue == 0.0 ? 100.0 : 0.0;
              });
            },
            child: Text("Change Padding")),
            Text("padvalue=$padValue"),
            AnimatedPadding(
              padding: EdgeInsets.all(padValue), 
              duration: Duration(seconds: 2),
              curve: Curves.easeInOut,
              child: Container(
                width: MediaQuery.of(context).size.width,
                 height: MediaQuery.of(context).size.height/4,
                 color: Colors.orangeAccent,
              ),)
      ],
    ));
  }
}
