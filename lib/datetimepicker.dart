import 'package:flutter/material.dart';

class DatetimeScreen extends StatefulWidget {
  const DatetimeScreen({super.key});

  @override
  State<DatetimeScreen> createState() => _DatetimeScreenState();
}

class _DatetimeScreenState extends State<DatetimeScreen> {
   DateTime selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
              "${selectedDate.year} - ${selectedDate.month} - ${selectedDate.day}"),
          ElevatedButton(
              onPressed: () async {
                final DateTime? dateTime = await showDatePicker(
                  context: context,
                  initialDate: selectedDate,
                  firstDate: DateTime(2000),
                  lastDate: DateTime(3000),
                );
                if (dateTime != null) {
                  setState(() {
                    selectedDate = dateTime; 
                  });                 
                }
              },
              child: Text("Choose Date"))
        ],
      ),
    ));
  }
}
