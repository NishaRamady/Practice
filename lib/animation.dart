import 'package:flutter/material.dart';

class AnimationScreen extends StatefulWidget {
  const AnimationScreen({super.key});

  @override
  State<AnimationScreen> createState() => _AnimationScreenState();
}

class _AnimationScreenState extends State<AnimationScreen> {
  var _width = 200.0;
  var _height = 100.0;
  bool flag = true;
  Decoration myDecor = BoxDecoration(
    borderRadius: BorderRadius.circular(2),
    color: Colors.blueGrey,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("First Animation program"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                curve: Curves.fastEaseInToSlowEaseOut,
                width: _width,
                height: _height,
                duration: Duration(seconds: 2),
                decoration: myDecor,
              ),
              ElevatedButton(
                onPressed: () {
                  _width = 100.0;
                  _height = 200.0;
                  setState(() {
                    if (flag) {
                      _width = 100.0;
                      _height = 200.0;
                      myDecor = BoxDecoration(
                          borderRadius: BorderRadius.circular(21),
                          color: Colors.orange);
                      flag = false;
                    } else {
                      _width = 200.0;
                      _height = 100.0;
                      flag = true;
                      myDecor = BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: Colors.blueGrey,
                      );
                    }
                  });
                },
                child: Text("Animate"),
              )
            ],
          ),
        ));
  }
}
