import 'package:flutter/material.dart';

class Palindrome extends StatefulWidget {
  const Palindrome({super.key});

  @override
  State<Palindrome> createState() => _PalindromeState();
}

class _PalindromeState extends State<Palindrome> {
  TextEditingController wordController = TextEditingController();
  bool? isPalindrome;
  palindromeCheck() {
    String word = wordController.text.toLowerCase();
    String reversedWord;
    reversedWord = word.split('').reversed.join('');
    isPalindrome = word == reversedWord;
    setState(() {});
  }

  reset() {
    setState(() {
      wordController.clear();
      isPalindrome = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text("Palindrome check"),
      ),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const SizedBox(
          height: 12,
        ),
        const Text(
          "Enter a word",
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white),
        ),
        const SizedBox(
          height: 12,
        ),
        TextField(
          controller: wordController,
          cursorColor: Colors.white,
          style: const TextStyle(color: Colors.white),
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
              constraints: const BoxConstraints(maxWidth: 300),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(width: 2, color: Colors.white),
              )),
        ),
        const SizedBox(
          height: 12,
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            onPressed: palindromeCheck,
            child: const Text("Check if Palindrome")),
        const SizedBox(
          height: 12,
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            onPressed: reset,
            child: const Text("Reset")),
        const SizedBox(
          height: 20,
        ),
        if (isPalindrome == true)
          const Text(
            'It is a palindrome',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white),
          ),
        if (isPalindrome == false)
          const Text(
            'It is not a palindrome',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color:Colors.white),
          ),
      ])),
    );
  }
}
