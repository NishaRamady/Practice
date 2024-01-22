import 'package:flutter/material.dart';

class SequenceScreen extends StatelessWidget {
  const SequenceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: const Text("Triangular Number Sequence Screen"),),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for(int i=1;i<=5;i++)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
             for(int j=1;j<=i;j++)
             Padding(
               padding: const EdgeInsets.all(12.0),
               child: Text("$j",style: const TextStyle(fontSize: 20),),
             ),
            ],)
          

          ],
        ),
    );
    
  }
}