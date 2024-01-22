import 'package:flutter/material.dart';

class ReusableContainer extends StatelessWidget {
  const ReusableContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width:100,
      decoration: BoxDecoration(border:Border.all(color: Colors.red,),borderRadius: BorderRadius.circular(15),color: Colors.blue )
      ,
    );
  }
}