import 'package:bmi_calculator/Constants.dart';
import 'package:bmi_calculator/COMPONENTS/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/COMPONENTS/bottom_button.dart';
import 'package:bmi_calculator/COMPONENTS/Round_BottomButton.dart';
import 'package:bmi_calculator/calculater_brain.dart';
class ResultPage extends StatelessWidget {

  ResultPage({@required this.interpretation,@required this.bmiResult,@required this.resultText});
   final String bmiResult;
final String resultText;
final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar:AppBar(title:Text('BMI CALCULATOR'),
    ),body:Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[Expanded(child:Container(padding: EdgeInsets.all(15.0),
          alignment:Alignment.bottomLeft,child: Text('YOUR RESULT',
    style: KtitleTextSyle,),),),
        Expanded(flex: 5,child: reUsableCard(colour: KActiveContaineraColour,cardChild: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[Text(resultText.toUpperCase(),style: KresultTextStyle,),Text(bmiResult,style: KBMITextStyle,),
          Text(interpretation,textAlign: TextAlign.center,   style: KBodyTextStyle,)],
        ),),),
     BottomContainer(onTap: (){ Navigator.pop(context); }, buttonTitle:'re-calculate'), ],),);
  }
}
