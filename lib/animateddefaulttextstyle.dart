import 'package:flutter/material.dart';

class AnimatedDefaultTextstyle extends StatefulWidget {
  const AnimatedDefaultTextstyle({super.key});

  @override
  State<AnimatedDefaultTextstyle> createState() =>
      _AnimatedDefaultTextstyleState();
}

class _AnimatedDefaultTextstyleState extends State<AnimatedDefaultTextstyle> {
  bool _first = true;
  double _fontsize = 60;
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 120,
            child: AnimatedDefaultTextStyle(
              duration: Duration(milliseconds: 300),
              style: TextStyle(
                fontSize: _fontsize,
                color: _color,
                fontWeight: FontWeight.bold,
              ),
              child: Text("Flutter"),
            ),
          ),
          TextButton(
              onPressed: () {
                setState(() {
              _fontsize= _first ? 90 : 30;
              _color= _first ? Colors.blue : Colors.red;
             _first = !_first;
                });
              },
              child: Text("Switch"))
        ],
      ),
    );
  }
}
