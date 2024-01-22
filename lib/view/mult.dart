import 'package:flutter/material.dart';

class MultiplicationScreen2 extends StatefulWidget {
  const MultiplicationScreen2({super.key});

  @override
  State<MultiplicationScreen2> createState() => _MultiplicationScreen2State();
}

class _MultiplicationScreen2State extends State<MultiplicationScreen2> {
  TextEditingController num1Controller = TextEditingController();
  TextEditingController num2Controller = TextEditingController();

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
              SizedBox(height: 12),
              TextField(
                controller: num1Controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    constraints: BoxConstraints(maxWidth: 200),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                "Enter the value for displaying table",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 12),
              TextField(
                controller: num2Controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    constraints: BoxConstraints(maxWidth: 200),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
              ),
              SizedBox(
                height: 12,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {});
                  },
                  child: Text("Display multiplication table")),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      num1Controller.clear();
                      num2Controller.clear(); 
                    });
                   
                  },
                  child: Text("Reset")),
              Expanded(
                  child: ListView.builder(
                itemCount: num2Controller.text.isNotEmpty
                    ? int.parse(num2Controller.text)
                    : 0,
                //  itemCount: 10,
                itemBuilder: (context, index) {
                  if (num1Controller.text.isNotEmpty &&
                      num2Controller.text.isNotEmpty) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50,
                        color: Colors.pink.shade500,
                        child: Center(
                            child: Text(
                          //  "${index + 1} * 5 = ${(index+1) * 5}",
                          "${index + 1} * ${(num1Controller.text)} = ${(index + 1) * int.parse(num1Controller.text)}",

                          style: const  TextStyle(
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



