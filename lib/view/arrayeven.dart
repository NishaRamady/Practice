import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EvenArray extends StatefulWidget {
  const EvenArray({super.key});

  @override
  State<EvenArray> createState() => _EvenArrayState();
}

class _EvenArrayState extends State<EvenArray> {
  List<int> list = [];
  int? even;

  final intFormatter = FilteringTextInputFormatter.digitsOnly;
  TextEditingController numController = TextEditingController();

  addvaluetoArray() {
    String value = numController.text;
    setState(() {
      list.add(int.tryParse(value) ?? 0);
    });
    numController.clear();
  }
  displayEven() {
  int evenCount = 0;

  for (int number in list) {
    if (number % 2 == 0) {
      evenCount++;
    }
  }
  setState(() {
    even = evenCount;
  });
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lime,
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: const Text("Even numbers"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 12),
              const Text(
                "Enter a number",
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 12),
              TextField(
                keyboardType: TextInputType.number,
                inputFormatters: [intFormatter],
                controller: numController,
                decoration: InputDecoration(
                    constraints: const BoxConstraints(maxWidth: 300),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
              ),
              const SizedBox(height: 12),
                
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple),
                  onPressed: displayEven,
                  child: const Text("Display number of even")),
              const SizedBox(height: 12),
              if(even!=null)
              Text(
                "Numbers of even numbers : $even",
                style: const TextStyle(fontSize: 20,color: Colors.red,fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Expanded(
                  child: ListView.builder(
                itemCount: list.length,
                itemBuilder: (context, index) {
                  return Center(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "${list[index]}",
                      style: const TextStyle(fontSize: 18),
                    ),
                  ));
                },
              )),
              const SizedBox(height: 12),
            ],
          ),
        ));
  }
}
