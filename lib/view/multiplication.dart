import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MultiplicationScreen extends StatefulWidget {
  const MultiplicationScreen({super.key});

  @override
  State<MultiplicationScreen> createState() => _MultiplicationScreenState();
}

class _MultiplicationScreenState extends State<MultiplicationScreen> {
  TextEditingController num1Controller = TextEditingController();
  final intFormatter = FilteringTextInputFormatter.digitsOnly;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Multiplication table"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                "Enter a number",
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 12),
              TextField(
                // onChanged: (value) {
                //   setState(() {

                //   });
                // },
                inputFormatters: [intFormatter],
                                controller: num1Controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    constraints: const BoxConstraints(maxWidth: 200),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
              ),
              const SizedBox(height: 12),
              ElevatedButton(
                  onPressed: () {
                    setState(() {});
                  },
                  child: const Text("Display multiplication table")),
              const SizedBox(height: 12),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      num1Controller.clear();
                    });
                  },
                  child: const Text("Reset")),
              Expanded(
                  child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  if (num1Controller.text.isNotEmpty) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50,
                        color: Colors.pink.shade500,
                        child: Center(
                            child: Text(
                          "${index + 1} * ${(num1Controller.text)} = ${(index + 1) * int.parse(num1Controller.text)}",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.white),
                        )),
                      ),
                    );
                  } else {
                    return Container();
                  }
                },
              ))
            ],
          ),
        ));
  }
}
