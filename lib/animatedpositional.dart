import 'package:flutter/material.dart';

class AnimatedpositionalExample extends StatefulWidget {
  const AnimatedpositionalExample({super.key});

  @override
  State<AnimatedpositionalExample> createState() =>
      _AnimatedpositionalExampleState();
}

class _AnimatedpositionalExampleState extends State<AnimatedpositionalExample> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: SizedBox(
              width: 200,
              height: 350,
              child: Stack(
          children: [
            AnimatedPositioned(
                width: selected ? 200 : 50,
                height: selected ? 50 : 200,
                top: selected ? 50 : 150,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selected = !selected;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.orangeAccent,
                      borderRadius: BorderRadius.circular(25)
                    ),
              
                  ),
                ),
                duration: Duration(seconds: 2))
          ],
              ),
            ),
        ));
  }
}
