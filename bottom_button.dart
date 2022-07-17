import 'package:bmi_calculator/SCREENS/result_page.dart';
import 'package:flutter/material.dart';
import '../Constants.dart';
class BottomContainer extends StatelessWidget{
  BottomContainer({@required this.onTap,@required this.buttonTitle});
  final Function onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: onTap,
      child: Container(child: Center(child: Text(buttonTitle,style: KlargeNumberStyle,),), color:KBottomContainerColour,padding: EdgeInsets.only(bottom:20.0) ,margin:EdgeInsets.only(top:10.0),width:double.infinity,
        height: KBottomContainerHeight,),
    );
  }
}