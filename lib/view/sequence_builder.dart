import 'package:flutter/material.dart';

class SequenceScreen2 extends StatefulWidget {
  const SequenceScreen2({super.key});

  @override
  State<SequenceScreen2> createState() => _SequenceScreen2State();
}

class _SequenceScreen2State extends State<SequenceScreen2> {
  TextEditingController numController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: const Text("Triangular Number Sequence Screen"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding:  EdgeInsets.all(8.0),
            child:  Text(
              "Enter a number between 1 and 10",
              style: TextStyle(fontSize: 18),
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          TextField(
            controller: numController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                constraints: const BoxConstraints(maxWidth: 300),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15))),
          ),
          const SizedBox(
            height: 12,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {});
              },
              child: const Text("Display sequence")),
               const SizedBox(
            height: 12,
          ),
               ElevatedButton(
              onPressed: () {
                setState(() {
                  
                  
                });
                numController.clear();
              },
              child: const Text("Reset")),
               const SizedBox(
            height: 12,
          ),

          Expanded(
            child: ListView.builder(
              // itemCount :5
              itemCount: numController.text.isNotEmpty
                       ? int.parse(numController.text)
                       : 0,
              itemBuilder: (context, index) {
                // for(int i=1;i<=5;i++)
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (int j = 1; j <= index + 1; j++)
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          "$j",
                          style: const TextStyle(fontSize: 20),
                        ),
                      ),
                  ],
                );
              },
            ),
          ),
         
        ],
      ),
    );
  }
}
