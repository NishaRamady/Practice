import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:practice/animatedalign.dart';
import 'package:practice/animatedcrossfade.dart';
import 'package:practice/animateddefaulttextstyle.dart';
import 'package:practice/animatedicon.dart';
import 'package:practice/animatedpadding.dart';
import 'package:practice/animatedphysicalmodel.dart';
import 'package:practice/animatedpositional.dart';
import 'package:practice/animatedrotation.dart';
import 'package:practice/animation.dart';
import 'package:practice/bmicalculator.dart';
import 'package:practice/checkboxlist.dart';
import 'package:practice/checkboxlist2.dart';
import 'package:practice/daterange.dart';
import 'package:practice/datetimeformat.dart';
import 'package:practice/datetimeformatintl.dart';
import 'package:practice/datetimepicker.dart';
import 'package:practice/diceroller.dart';
import 'package:practice/dropdownmenu.dart';
import 'package:practice/dropdownbuttonlist.dart';
import 'package:practice/dropdownmenulist.dart';
import 'package:practice/expansiontile.dart';
import 'package:practice/expansiontilecontroller.dart';
import 'package:practice/gradientcontainermain.dart';
import 'package:practice/gradientcontainermain_anothermethod.dart';
import 'package:practice/lineargradient.dart';
import 'package:practice/login.dart';
import 'package:practice/mathematicaloper.dart';
import 'package:practice/maths.dart';
import 'package:practice/view/area/area.dart';
import 'package:practice/view/arraydescending.dart';
import 'package:practice/view/arrayeven.dart';
import 'package:practice/view/arrayinterchange.dart';
import 'package:practice/view/divisibility.dart';

import 'package:practice/view/mult.dart';
import 'package:practice/redcontainerpgm.dart';
import 'package:practice/reusablecontainerpgm.dart';
import 'package:practice/view/dayoftheweek.dart';
import 'package:practice/view/grade.dart';
import 'package:practice/view/gradesheet.dart';
import 'package:practice/view/multiplication.dart';
import 'package:practice/view/palindrome.dart';
import 'package:practice/view/pass_mark.dart';
import 'package:practice/view/passmark.dart';
import 'package:practice/view/sequence.dart';
import 'package:practice/view/sequence_builder.dart';
import 'package:practice/view/simple_interest.dart';
import 'package:practice/view/stringoutput.dart';
import 'package:practice/view/sum.dart';
import 'package:practice/timepicker.dart';
import 'package:practice/validatepractice.dart';
import 'package:practice/view/sumofodd.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
 

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      
      
      //  home: LoginScreen(),
        // home:BMIScreen(),
        //  home:ValidateScreen(),
        // home:MathsScreen(),
    //  home:GradientContainerMainScreen(),
      // home:GradientContainerMainScreens(),
      // home:DropDown(),
        // home:DropDownButtonApp (),
      //  home:DropdownMenuExample()
      // home:MathsScreen2(),
      // home:ReusableScreen(),
      //  home:ExpansionTileScreen(),
      //  home:ExpansionTileControllerApp (),
        // home:CheckboxListTileScreen(),
      //  home:CheckboxListTileExample(),
      // home:RedContainerScreen(),
      // home:ExpansionTileScreen(),
        // home:AnimationScreen(),
        // home:AnimatedcrossfadeScreen(),
        // home:AnimatedAlignExample(),
        // home:AnimatedDefaultTextstyle(),
        // home:AnimatedPaddingExample(),
      
      //  home: AnimatedIconExample(),
        // home:DiceRoller(),
      
        // home:DatetimeScreen(),
      //  home:TimepickerScreen(),
        // home:DaterangeScreen(),
      //  home:DateTimeFormatScreen(),
      //  home:DateTimeFormat(),
      // home: LogoRotate(),
    //  home:AnimatedPhysicalModelExample(),
      // home:AnimatedpositionalExample(),
      //  home:SumScreen(),
      //  home: GradeScreen(),
      //  home:  DayoftheWeek(),
      //  home:PassMark(),
        // home:MultiplicationScreen(),
      // home:MultiplicationScreen2(),
      // home:SumofOdd(),
    //  home:NumberScreen(),
    //  home:StringOutputScreen(),
    // home:SequenceScreen(),
    // home:SequenceScreen2() ,
    // home:ArrayDescending(),
    // home:EvenArray(),
    //  home:Palindrome(),
    //  home:Interchange(),
     home:AreaScreen(),
  //  home:Divisibility(),
 
  
      );
  }
}

