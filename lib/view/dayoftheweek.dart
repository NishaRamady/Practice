import 'package:flutter/material.dart';

class DayoftheWeek extends StatefulWidget {
  const DayoftheWeek({super.key});

  @override
  State<DayoftheWeek> createState() => _DayoftheWeekState();
}

class _DayoftheWeekState extends State<DayoftheWeek> {
  int? day;
  TextEditingController weekdayController = TextEditingController();
  showResult(String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Weekday"),
          content: Text(message),
        );
      },
    );
    weekdayController.clear();
  }

  weekDay() {
    day = int.parse(weekdayController.text);
    if (day != null) {
      switch (day) {
        case 1:
          showResult(" It is Sunday!");
          break;
        case 2:
          showResult("It is Monday!");
          break;
        case 3:
          showResult("It is Tuesday!");
          break;
        case 4:
          showResult("It is Wednesday!");
          break;
        case 5:
          showResult("It is Thursday!");
          break;
        case 6:
          showResult("It is Friday!");
          break;
        case 7:
          showResult("It is Saturday!");
          break;
        default:
          showResult("Entered value must be between 1 and 7");
          break;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade200,
      appBar: AppBar(title: const Text("Find the weekday")),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text(
            "Enter a value between 1 and 7",
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 12),
          TextField(
            controller: weekdayController,
            decoration: InputDecoration(
                constraints: const BoxConstraints(maxWidth: 200),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15))),
          ),
          const SizedBox(
            height: 12,
          ),
          ElevatedButton(onPressed: weekDay, child: const Text("Find weekday"))
        ]),
      ),
    );
  }
}
