import 'package:flutter/material.dart';
import 'package:practice/loginvalue.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _phoneController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Form(
                autovalidateMode: AutovalidateMode.always,
                child: TextFormField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  validator: validateEmail,
                  decoration: InputDecoration(
                    constraints: BoxConstraints(maxHeight: 100, maxWidth: 350),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    )),
                    label: Text("Email"),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              TextFormField(
                controller: _phoneController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  constraints: BoxConstraints(maxHeight: 100, maxWidth: 350),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  label: Text("Phonenumber"),
                ),
              ),
              SizedBox(height: 50),
              ElevatedButton(
                  onPressed: () {
                    emailcheck();
                  },
                  child: Text("Login")),
            ],
          ),
        ));
  }

  void emailcheck() {
    // if (_emailController.text.isNotEmpty &&
    //     _emailController.text.contains("@"))
    {
      if (_phoneController.text.isNotEmpty &&
          _phoneController.text.characters.length == 10) {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => LoginValueScreen(
                  email: _emailController.text, phone: _phoneController.text),
            ));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("Please enter a valid phone number")));
      }
      // }
      // else {
      //   print("Error2");
    }
  }

  String? validateEmail(String? value) {
    const pattern = r"(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'"
        r'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-'
        r'\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*'
        r'[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4]'
        r'[0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9]'
        r'[0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\'
        r'x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])';
    final regex = RegExp(pattern);

    return value!.isNotEmpty && !regex.hasMatch(value)
        ? 'Enter a valid email address'
        : null;
  }
}
