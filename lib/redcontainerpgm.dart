import 'package:flutter/material.dart';
import 'package:practice/redcontainer.dart';

class RedContainerScreen extends StatelessWidget {
  const RedContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RedContainer(
        textval: "hello",
        color:Colors.white,
      ),
    );
  }
}
