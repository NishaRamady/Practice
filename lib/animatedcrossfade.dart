import 'package:flutter/material.dart';

class AnimatedcrossfadeScreen extends StatefulWidget {
  const AnimatedcrossfadeScreen({super.key});

  @override
  State<AnimatedcrossfadeScreen> createState() =>
      _AnimatedcrossfadeScreenState();
}

class _AnimatedcrossfadeScreenState extends State<AnimatedcrossfadeScreen> {
  bool _bool = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            height: 100,
          ),
          TextButton(
              onPressed: () {
                setState(() {
                  _bool = !_bool;
                });
              },
              child: Text("Switch",style: TextStyle(color: Colors.black),)),
              AnimatedCrossFade(
                firstChild:Image.asset("assets/images/dice-1.png"), 
                secondChild: Image.asset("assets/images/dice-6.png"),
                 crossFadeState:_bool?CrossFadeState.showFirst:CrossFadeState.showSecond ,
                 duration: Duration(seconds: 1))
        ],
      ),
    );
  }
}
