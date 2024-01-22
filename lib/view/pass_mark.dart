// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:lottie/lottie.dart';

// class PassmarkScreen extends StatefulWidget {
//   PassmarkScreen({super.key});

//   @override
//   State<PassmarkScreen> createState() => _PassmarkScreenState();
// }

// class _PassmarkScreenState extends State<PassmarkScreen> {
//   double? marks;

//   TextEditingController marksController = TextEditingController();

//   final doubleFormatter =
//       FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}'));

//   bool? passorFail() {
//     if (marksController.text.isNotEmpty) {
//       marks = double.parse(marksController.text);
//       if (marks! > 50.0) {
//         return true;
//       } else {
//         return false;
//       }
//     }

//     return null;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.pink.shade200,
//       appBar: AppBar(
//         title: const Text("Pass or Fail"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const Text(
//               "Please enter your marks",
//               style: TextStyle(fontSize: 18),
//             ),
//             const SizedBox(height: 12),
//             TextField(
//               keyboardType: TextInputType.number,
//               controller: marksController,
//               decoration: InputDecoration(
//                   constraints: const BoxConstraints(maxWidth: 200),
//                   border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(15))),
//               inputFormatters: [doubleFormatter],
//             ),
//             const SizedBox(
//               height: 12,
//             ),
//             ElevatedButton(
//                 onPressed: () {
//                   setState(() {
//                     passorFail();
//                   });
//                 },
//                 child: const Text("Result")),
//            passorFail() != null ?  passorFail() == true
//                 ? Column(
//                   children: [
//                     const Text("You have passed"),
//                     Lottie.asset("assets/images/happy.json")
//                   ],
//                 )
                        
//                 : Column(
//                   children: [
//                     const Text("You have failed"),
//                     Lottie.asset("assets/images/sad.json")
//                   ],
//                 ) : const  SizedBox()
//           ],
//         ),
//       ),
//     );
//   }
// }


