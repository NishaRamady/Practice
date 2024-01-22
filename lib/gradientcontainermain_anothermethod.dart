import 'package:flutter/material.dart';

import 'package:practice/gradientcontainer.dart';
import 'package:practice/gradientcontainer_anothermethod.dart';


class GradientContainerMainScreens extends StatelessWidget {
  const GradientContainerMainScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:GradientContainerScreens( Colors.red,Colors.blue,)
    );
  }
}