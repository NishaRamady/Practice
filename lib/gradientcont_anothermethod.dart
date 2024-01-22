import 'package:flutter/material.dart';
//  import 'package:flutter_svg/flutter_svg.dart';

class Gradientscreen extends StatefulWidget {
  const Gradientscreen({super.key});

  @override
  State<Gradientscreen> createState() => _GradientscreenState();
}

class _GradientscreenState extends State<Gradientscreen> {
  //  var activediceimage = "assets/images/dice-2.svg";

  var activediceimage = "assets/images/Switchon.png";

  void rolldice() {
    setState(() {
      //  activediceimage = "assets/images/dice-4.svg";

      activediceimage = "assets/images/Switchoff.png";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          activediceimage,
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: TextStyle(fontSize: 28),
            ),
            onPressed: rolldice,
            child: const Text("Roll Dice")),
      ],
    );
  }
}
