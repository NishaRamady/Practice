import 'package:flutter/material.dart';


class ExpansionTileScreen extends StatelessWidget {
  const ExpansionTileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Learning Expansion tile")),
      body:const ExpTile(),
    );
  }
}

class ExpTile extends StatefulWidget {
  const ExpTile({super.key});

  @override
  State<ExpTile> createState() => _ExpTileState();
}

class _ExpTileState extends State<ExpTile> {
bool _customTileExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ExpansionTile(
          title: Text("MACE ELECTRICAL"),
          subtitle:Text("Name of students") ,
          children: [

            Padding(
              padding: const EdgeInsets.only(right:10),
              child: Column(
               crossAxisAlignment: CrossAxisAlignment.end,
               // mainAxisAlignment: MainAxisAlignment.end,
               children: [
                 Text("Nisha"),
                 Text("Mary"),
                 Text("Renu"),
                 Text("Priya"),
               ],
              ),
            )
          ],
          ),
          ExpansionTile(
            title: Text("MACE COMPUTER"),
            subtitle: Text("Name of students"),
            
             trailing: Icon(
              _customTileExpanded
                 ? Icons.arrow_drop_down_circle
                 : Icons.arrow_drop_down,
          ),
          children: [
             Padding(
               padding: const EdgeInsets.only(right:10),
               child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                // mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Betty"),
                  Text("Dawnee"),
                  Text("Twinkle"),
                  Text("Seema"),
                ],
               ),
             )
          ],
          
            onExpansionChanged: (value) {
          setState(() {
              _customTileExpanded = value;
            });
          },

          ),
          ExpansionTile(
            title: Text("MACE ELECTRONICS"),
            subtitle:Text("Name of students") ,
            controlAffinity: ListTileControlAffinity.leading,
            children: [
                   Padding(
              padding: const EdgeInsets.only(right:10),
              child: Column(
               crossAxisAlignment: CrossAxisAlignment.end,
               // mainAxisAlignment: MainAxisAlignment.end,
               children: [
                 Text("Sindhu"),
                 Text("Sheeba"),
                 Text("Jinu"),
                 Text("Shobi"),
               ],
              ),
            )
              
              
             

            ],
            )
      ],

    );
  }
}

/// Flutter code sample for [ExpansionTile].

// class ExpansionTileApp extends StatelessWidget {
//   const ExpansionTileApp({super.key});

//   @override
//   Widget build(BuildContext context) {
   
//       return Scaffold(
//         appBar: AppBar(title: const Text('ExpansionTile Sample')),
//         body:  ExpansionTileExample(),
      
//     );
//   }
// }

// class ExpansionTileExample extends StatefulWidget {
//   const ExpansionTileExample({super.key});

//   @override
//   State<ExpansionTileExample> createState() => _ExpansionTileExampleState();
// }

// class _ExpansionTileExampleState extends State<ExpansionTileExample> {
//   bool _customTileExpanded = false;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         const ExpansionTile(
//           title: Text('ExpansionTile 1'),
//           subtitle: Text('Trailing expansion arrow icon'),
//           children: <Widget>[
//             ListTile(title: Text('This is tile number 1')),
//           ],
//         ),
//         ExpansionTile(
//           title: const Text('ExpansionTile 2'),
//           subtitle: const Text('Custom expansion arrow icon'),
//           trailing: Icon(
//             _customTileExpanded
//                 ? Icons.arrow_drop_down_circle
//                 : Icons.arrow_drop_down,
//           ),
//           children: const <Widget>[
//             ListTile(title: Text('This is tile number 2')),
//           ],
//           onExpansionChanged: (bool expanded) {
//             setState(() {
//               _customTileExpanded = expanded;
//             });
//           },
//         ),
//         const ExpansionTile(
//           title: Text('ExpansionTile 3'),
//           subtitle: Text('Leading expansion arrow icon'),
//           controlAffinity: ListTileControlAffinity.leading,
//           children: <Widget>[
//             ListTile(title: Text('This is tile number 3')),
//           ],
//         ),
//       ],
//     );
//   }
// }
