import 'package:flutter/material.dart';

class DaterangeScreen extends StatefulWidget {
  const DaterangeScreen({super.key});

  @override
  State<DaterangeScreen> createState() => _DaterangeScreenState();
}

class _DaterangeScreenState extends State<DaterangeScreen> {
  DateTimeRange selectedDates =
      DateTimeRange(start: DateTime.now(), end: DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${selectedDates.duration.inDays}"),
            ElevatedButton(
                onPressed: () async {
                  final DateTimeRange? dateTimeRange =
                      await showDateRangePicker(
                          context: context,
                          firstDate: DateTime(2000),
                          lastDate: DateTime(3000));
                  if (dateTimeRange != null) {
                    setState(() {
                      selectedDates = dateTimeRange;
                    });
                  }
                },
                child: Text("Choose dates "))
          ],
        ),
      ),
    );
  }
}
