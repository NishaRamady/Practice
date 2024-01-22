import 'package:flutter/material.dart';

class RedContainer extends StatelessWidget {
  final String textval;
  final Color color;
  const RedContainer({super.key, required this.textval, required this.color});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 350,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(width: 1),
          color: Colors.red,
        ),
        child: Center(
            child: Text(
          textval,
          style: TextStyle(color: color),
        )),
      ),
    );
  }
}
