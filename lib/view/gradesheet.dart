import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';

class GradeScreen extends StatefulWidget {
  const GradeScreen({super.key});

  @override
  State<GradeScreen> createState() => _GradeScreenState();
}

class _GradeScreenState extends State<GradeScreen> {
  double? marks;
  final doubleFormatter =
      FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}'));
  TextEditingController marksController = TextEditingController();

  showResult(String message, String lottieAsset) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Result"),
          content: SizedBox(
            height: 300,
            width: 100,
            child: Column(
              children: [
                Text(message,
                    style: TextStyle(color: Colors.red, fontSize: 20)),
                Lottie.asset("assets/images/$lottieAsset.json"),
              ],
            ),
          ),
        );
      },
    );
    marksController.clear();
  }

  void passorFail() {
    marks = double.parse(marksController.text);
    if (marks != null) {
      if (marks! >= 90 && marks!<=100) {
        showResult("You have A Grade", "happy");
      } else if (marks! >= 80 && marks!<=89) {
        showResult("You have B Grade", "happy");
      } else if (marks! >= 70 && marks!<=79) {
        showResult("You have C Grade", "happy");
      } else if (marks! >= 60 && marks!<=69) {
        showResult("You have D Grade", "greatwork");
      } else if (marks! >= 50 && marks!<=59) {
        showResult("You have E Grade", "greatwork");
      } else if (marks! < 50) {
        showResult("You have failed", "sad");
      } else if (marks! > 100) {
        showResult("Inavlid marks entered , Maximum marks is 100", "sad");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade200,
      appBar: AppBar(
        title: const Text(" Your Grades"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Enter your marks",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 12,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  constraints: const BoxConstraints(maxWidth: 200),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))),
              controller: marksController,
              inputFormatters: [doubleFormatter],
            ),
            const SizedBox(
              height: 12,
            ),
            ElevatedButton(onPressed: passorFail, child: const Text("Result"))
          ],
        ),
      ),
    );
  }
}
