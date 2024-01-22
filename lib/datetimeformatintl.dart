import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class DateTimeFormatScreen extends StatelessWidget {
  DateTimeFormatScreen({super.key});

 
  @override
  Widget build(BuildContext context) {
     // Current time
  DateTime currentTime = DateTime.now();

  // Format time
 // String formattedTime = DateFormat.yMMMd().format(currentTime);
 // String formattedTime = DateFormat.Hm().format(currentTime);
  //  String formattedTime = DateFormat.Hms().format(currentTime);
    // String formattedTime = DateFormat.LLLL().format(currentTime);    //for standalone month
      // String formattedTime = DateFormat.MMMMEEEEd().format(currentTime); //month weekday day
        String formattedTime = DateFormat.yMMMMEEEEd().add_Hms().format(currentTime); //year month weekday day
        //  String formattedTime = DateFormat.yMd().add_jms().format(currentTime); // jms hour minute second for AM/PM?
 

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
