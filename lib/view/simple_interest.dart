import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SimpleInterestScreen extends StatefulWidget {
  const SimpleInterestScreen({super.key});

  @override
  State<SimpleInterestScreen> createState() => _SimpleInterestScreenState();
}

class _SimpleInterestScreenState extends State<SimpleInterestScreen> {
  int? amount;
  double? rate;
  double? years;
  double? simpleInterest;
  TextEditingController amountController = TextEditingController();
  TextEditingController rateController = TextEditingController();
  TextEditingController yearsController = TextEditingController();
  final intFormatter = FilteringTextInputFormatter.digitsOnly;
  final doubleFormatter =
      FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}'));

  interest() {
    amount = int.parse(amountController.text);
    rate = double.parse(rateController.text);
    years = double.parse(yearsController.text);
    setState(() {
      simpleInterest = (amount! * rate! * years!) / 100;
    });
  }

  clear() {
    setState(() {
    amountController.clear();
    rateController.clear();
    yearsController.clear();
    simpleInterest = null;
    });
  
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.orange.shade400,
        appBar: AppBar(
          title: const Text("Simple interest Calculation"),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Enter amount",
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(
                  height: 12,
                ),
                TextField(
                  inputFormatters: [intFormatter],
                  controller: amountController,
                  decoration: InputDecoration(
                      constraints: const BoxConstraints(maxWidth: 200),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15))),
                ),
                const SizedBox(
                  height: 12,
                ),
                const Text(
                  "Enter rate of interest",
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(
                  height: 12,
                ),
                TextField(
                  inputFormatters: [doubleFormatter],
                  controller: rateController,
                  decoration: InputDecoration(
                      constraints: const BoxConstraints(maxWidth: 200),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15))),
                ),
                const SizedBox(
                  height: 12,
                ),
                const Text(
                  "Enter the number of years",
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(
                  height: 12,
                ),
                TextField(
                  inputFormatters: [doubleFormatter],
                  controller: yearsController,
                  decoration: InputDecoration(
                      constraints: const BoxConstraints(maxWidth: 200),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15))),
                ),
                const SizedBox(
                  height: 12,
                ),
                ElevatedButton(onPressed: interest, child: const Text("Result")),
                const SizedBox(
                  height: 12,
                ),
                if (simpleInterest != null && simpleInterest == 1)
                  Text(
                    "Simple interest is ${simpleInterest!.toStringAsFixed(2)} rupee",
                    style: const TextStyle(fontSize: 18),
                  ),
                  if (simpleInterest != null && simpleInterest != 1)
                  Text(
                    "Simple interest is ${simpleInterest!.toStringAsFixed(2)} rupees",
                    style: const TextStyle(fontSize: 18),
                  ),
                const SizedBox(
                  height: 12,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                    ),
                    onPressed: clear,
                    child: const Text("Reset")),
                const SizedBox(
                  height: 12,
                ),
              ],
            ),
          ),
        ));
  }
}
