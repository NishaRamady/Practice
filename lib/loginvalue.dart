import 'package:flutter/material.dart';

class LoginValueScreen extends StatelessWidget {
  const LoginValueScreen({super.key, required this.email, required this.phone});
  final String email;
  final String phone;

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("entered email is: $email"),
            Text("entered phone is: $phone"),
          ],
        ),
      ),
    );
  }
}
