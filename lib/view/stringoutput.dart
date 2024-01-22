import 'package:flutter/material.dart';

class StringOutputScreen extends StatefulWidget {
 const StringOutputScreen({super.key});

  @override
  State<StringOutputScreen> createState() => _StringOutputScreenState();
}

class _StringOutputScreenState extends State<StringOutputScreen> {
  String? name;

  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text("String Output"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Enter a text",
                style: TextStyle(fontSize: 18,color: Colors.white),
              ),
              const SizedBox(
                height: 12,
              ),
              TextField(
                style: const TextStyle(color: Colors.white),
                keyboardType: TextInputType.name,
                cursorColor: Colors.white,
                controller: nameController,
                decoration: InputDecoration(
                    constraints: const BoxConstraints(maxWidth: 300),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
              ),
              const SizedBox(
                height: 12,
              ),
              ElevatedButton(
                  onPressed: () {
                    name = nameController.text;
                    setState(() {});
                  },
                  child: (const Text("Display Text"))),
              const SizedBox(
                height: 12,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                    });
                    nameController.clear();
                    name = null;
                  },
                  child:const  Text("Reset")),
                  const SizedBox(height: 12,),
              if (name != null) Text("Entered value is $name",style: const TextStyle( fontSize: 18,color: Colors.white),)
            ],
          ),
        ));
  }
}
