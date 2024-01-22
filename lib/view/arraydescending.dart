

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ArrayDescending extends StatefulWidget {
  const ArrayDescending({super.key});

  @override
  State<ArrayDescending> createState() => _ArrayDescendingState();
}

class _ArrayDescendingState extends State<ArrayDescending> {
  List<int> list = [];
  final intFormatter = FilteringTextInputFormatter.digitsOnly;
  TextEditingController numController = TextEditingController();

  arrDescend() {
    setState(() {
      list.sort(
        (a, b) => b.compareTo(a),
      );
    });
  }

  arrAscend() {
    setState(() {
      list.sort();
    });
  }

  addvaluetoArray() {
    String value = numController.text;
    setState(() {
      list.add(int.tryParse(value) ?? 0);
    });
    numController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          title: const Text("Descending and Ascending Array"),
          backgroundColor: Colors.purple,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 12,
              ),
              const Text("Enter a number",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 12,
              ),
              TextField(
              //  inputFormatters: [intFormatter],
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
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigo,
                  ),
                  onPressed: addvaluetoArray,
                  child: const Text("Add value to array")),
              const SizedBox(
                height: 12,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                  onPressed: arrDescend,
                  child: const Text("Descending")),
              const SizedBox(
                height: 12,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  onPressed: arrAscend,
                  child: const Text("Ascending")),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                  child: ListView.builder(
                itemCount: list.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Center(
                        child: Text('${list[index]}',
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18))),
                  );
                },
              ))
            ],
          ),
        ));
  }
}
