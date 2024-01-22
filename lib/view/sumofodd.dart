
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SumofOdd extends StatefulWidget {
  const SumofOdd({Key? key}) : super(key: key);

  @override
  State<SumofOdd> createState() => _SumofOddState();
}

class _SumofOddState extends State<SumofOdd> {
  int? sum;
  int? num;
  int? count;

  final intFormatter = FilteringTextInputFormatter.digitsOnly;
  TextEditingController numController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: const Text("Sum of Odd numbers"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Enter a number",
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(
              height: 12,
            ),
            TextField(
              inputFormatters: [intFormatter],
              controller: numController,
              decoration: InputDecoration(
                constraints: const BoxConstraints(maxWidth: 200),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  num = 1;
                  sum = 0;
                  count = 0;
                  while (count! < int.parse(numController.text)) {
                    if (num! % 2 != 0) {
                      sum = sum! + num!;
                      count = count! + 1;
                    }
                    num = num! + 1;
                  }
                });
              },
              child: const Text("Sum of Odd numbers"),
            ),
            const SizedBox(
              height: 12,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    numController.clear();
                    sum = null;
                  });
                },
                child: const Text("Reset")),
            const SizedBox(
              height: 12,
            ),
            if (sum != null)
              Text(
                "The sum of first $count odd numbers is $sum",
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.red),
              ),
          ],
        ),
      ),
    );
  }
}
