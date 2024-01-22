// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:lottie/lottie.dart';

// class GradeScreen extends StatefulWidget {
//   const GradeScreen({super.key});

//   @override
//   State<GradeScreen> createState() => _GradeScreenState();
// }

// class _GradeScreenState extends State<GradeScreen> {
//   double? marks;
//   final doubleFormatter =
//       FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}'));
//   TextEditingController marksController = TextEditingController();
//   passorFail() {
//     marks = double.parse(marksController.text);
//     if (marks != null && marks! >= 90) {
//       showDialog(
//         context: context,
//         builder: (context) {
//           return  AlertDialog(
//             title: const Text("Result"),
//             content:  SizedBox(
//               height: 250,
//               width:100,
//               child: Column(
//                 children: [
//                   const  Text("You have A Grade !",style: TextStyle(color: Colors.blue,
//                     fontSize: 20), ),
//                   Lottie.asset("assets/images/happy.json")
//                 ],
//               ),
//             ),
//           );
//         },
//       );
//     } 
//     else if (marks != null && marks! >=80 && marks! <= 89) {
//       showDialog(
//         context: context,
//         builder: (context) {
//           return  AlertDialog(
//             title:const  Text("Result"),
//             content: SizedBox(
//               height: 250,
//               width: 100,
//               child: Column(
//                 children: [
//                   const Text("You have B Grade !",style: TextStyle(
//                     color: Colors.red,
//                     fontSize: 20),),
//                   Lottie.asset("assets/images/happy.json")
//                 ],
//               ),
//             ),
//           );
          
//         },
//       );
//     }
//      else if (marks != null && marks! >=70 && marks! <= 79) {
//       showDialog(
//         context: context,
//         builder: (context) {
//           return  AlertDialog(
//             title:const  Text("Result"),
//             content: SizedBox(
//               height: 250,
//               width: 100,
//               child: Column(
//                 children: [
//                   const Text("You have C Grade !",style: TextStyle(
//                     color: Colors.red,
//                     fontSize: 20),),
//                   Lottie.asset("assets/images/happy.json")
//                 ],
//               ),
//             ),
//           );
          
//         },
//       );
//     }
//      else if (marks != null && marks! >=60 && marks! <= 69) {
//       showDialog(
//         context: context,
//         builder: (context) {
//           return  AlertDialog(
//             title:const  Text("Result"),
//             content: SizedBox(
//               height: 300,
//               width: 100,
//               child: Column(
//                 children: [
//                   const Text("You have D Grade !",style: TextStyle(
//                     color: Colors.red,
//                     fontSize: 20),),
//                   Lottie.asset("assets/images/greatwork.json")
//                 ],
//               ),
//             ),
//           );
          
//         },
//       );
//     }
//      else if (marks != null && marks! >=50 && marks! <= 59) {
//       showDialog(
//         context: context,
//         builder: (context) {
//           return  AlertDialog(
//             title:const  Text("Result"),
//             content: SizedBox(
//               height: 300,
//               width: 100,
//               child: Column(
//                 children: [
//                   const Text("You have E Grade !",style: TextStyle(
//                     color: Colors.red,
//                     fontSize: 20),),
//                   Lottie.asset("assets/images/greatwork.json")
//                 ],
//               ),
//             ),
//           );
          
//         },
//       );
//     }
//      else if (marks != null &&  marks! < 50) {
//       showDialog(
//         context: context,
//         builder: (context) {
//           return  AlertDialog(
//             title:const  Text("Result"),
//             content: SizedBox(
//               height: 250,
//               width: 100,
//               child: Column(
//                 children: [
//                   const Text("You have failed !",style: TextStyle(
//                     color: Colors.red,
//                     fontSize: 20),),
//                   Lottie.asset("assets/images/sad.json")
//                 ],
//               ),
//             ),
//           );
          
//         },
//       );
//     }
    
//         marksController.clear();
      
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.pink.shade300,
//       appBar: AppBar(
//         title: const Text(" Your Grades"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const Text(
//               "Enter your marks",
//               style: TextStyle(fontSize: 20),
//             ),
//             const SizedBox(
//               height: 12,
//             ),
//             TextField(
//               keyboardType: TextInputType.number,
//               decoration: InputDecoration(
//                   constraints: const BoxConstraints(maxWidth: 200),
//                   border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(15))),
//               controller: marksController,
//               inputFormatters: [doubleFormatter],
//             ),
//             SizedBox(
//               height: 12,
//             ),
//             ElevatedButton(onPressed: passorFail, child: const Text("Result"))
//           ],
//         ),
//       ),
//     );
//   }
// }
