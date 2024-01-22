import 'package:flutter/material.dart';

class DateTimeFormat extends StatelessWidget {
     DateTimeFormat({super.key});


  @override
  Widget build(BuildContext context) {
    // Current time
    DateTime currentTime = DateTime.now();

    // Format time
    // String formattedTime =
    //     '${currentTime.hour}:${currentTime.minute} ${currentTime.hour >= 12 ? 'PM' : 'AM'}';
        String formattedTime =
        '${currentTime.day}:${currentTime.month}:${currentTime.year}:${currentTime.weekday}:${currentTime.timeZoneName}---${currentTime.hour}:${currentTime.minute} ${currentTime.hour >= 12 ? 'PM' : 'AM'}';

    return Scaffold(
      appBar: AppBar(
        title: Text('Time Formatting Example'),
      ),
      body: Center(
        child: Text(
          'Formatted values: $formattedTime',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
