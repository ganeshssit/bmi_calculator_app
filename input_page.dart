import 'package:bmi_calculator/calculater_brain.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/COMPONENTS/reusable_card.dart';
import 'package:bmi_calculator/COMPONENTS/ICON_CONTET.dart';
import 'package:bmi_calculator/SCREENS/result_page.dart';
import '../Constants.dart';
import '../COMPONENTS/Round_BottomButton.dart';
import '../COMPONENTS/bottom_button.dart';
import 'package:bmi_calculator/calculater_brain.dart';
enum Gender{
  male,
  Female,
}
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender SelectGender;
  int height=180;
  int Weight=60;
  int age=3;
 // Color malecardcolour=ActiveGestureColur;
 // Color FemaleCardColour=ActiveGestureColur;
 // void updateColour(Gender selectGender){
    //if(selectGender==Gender.male){
     // if(malecardcolour==ActiveContaineraColour) {
     ////////   malecardcolour = ActiveGestureColur;
      ////  FemaleCardColour=ActiveContaineraColour;
      //}//
        //else{
          //malecardcolour=ActiveContaineraColour;

      //}/
      //}
   // if(selectGender==Gender.Female){
     // if(FemaleCardColour==ActiveContaineraColour) {
       // FemaleCardColour = ActiveGestureColur;
        //malecardcolour=ActiveContaineraColour;
     // }
     // else{
       // FemaleCardColour=ActiveContaineraColour;

     // }

   // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body:Column(crossAxisAlignment: CrossAxisAlignment.stretch,children: <Widget>[
        Expanded(child: Row(children: <Widget>[

          Expanded(child:GestureDetector(onTap:(){setState((){
            SelectGender=Gender.male; });
          },
            child: reUsableCard(onPress: (){ setState((){ SelectGender=Gender.male; });  },   colour:SelectGender==Gender.male?KActiveGestureColur:KActiveContaineraColour,cardChild: IconContent(icon: FontAwesomeIcons.mars,label: 'MALE',),)),),
    Expanded(child: GestureDetector(onTap: (){setState((){ SelectGender=Gender.Female; });
    },      child: reUsableCard(  onPress: (){ setState((){ SelectGender=Gender.Female; });  },  colour:SelectGender==Gender.Female?KActiveGestureColur:KActiveContaineraColour,cardChild: IconContent(icon: FontAwesomeIcons.venus,label:'FEMALE',),)),),
    ],),),
    Expanded(child:reUsableCard( colour:KActiveContaineraColour,cardChild: Column(mainAxisAlignment:MainAxisAlignment.center,children: <Widget>[Text('HEIGHT',style: KLabelTextStyle ,),Row( mainAxisAlignment:MainAxisAlignment.center,crossAxisAlignment:CrossAxisAlignment.baseline,
    textBaseline:TextBaseline.alphabetic,  children:<Widget>[Text(height.toString(),style: KNumberTextStyle,),Text('cm',style: KLabelTextStyle,)],),
      SliderTheme(data: SliderTheme.of(context).copyWith(activeTrackColor: Colors.white,thumbColor: Color(0xFFEB1555),overlayColor: Color(0x29EB1555),
      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10.0),overlayShape:
      RoundSliderOverlayShape(overlayRadius: 30.0),),child:Slider(value: height.toDouble(),min: 120.0,max: 220.0,inactiveColor: Color(0xFF8D8E98), onChanged: (double newValue){
     setState((){   height=newValue.round();    });
    },),),],),),),
    Expanded(child: Row(children: <Widget>[Expanded(child:
    reUsableCard(colour:KActiveContaineraColour,cardChild:Column(mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[Text('WEIGHT',style: KLabelTextStyle,),Text(Weight.toString(),style: KNumberTextStyle,),
    Row(mainAxisAlignment: MainAxisAlignment.center,children: <Widget>[RoundIconButton(icon:FontAwesomeIcons.minus, onPressed: (){ setState((){
      Weight--; });
    }),SizedBox(width: 10.0,),RoundIconButton(icon:FontAwesomeIcons.plus,
    onPressed: (){ setState((){
      Weight++; });
    },),],)],),),),
          Expanded(child:reUsableCard(colour:KActiveContaineraColour,cardChild:Column(mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[Text('AGE',style: KLabelTextStyle,),Text(age.toString(),style: KNumberTextStyle,), Row(mainAxisAlignment: MainAxisAlignment.center,children: <Widget>[RoundIconButton(icon:FontAwesomeIcons.minus, onPressed: (){ setState((){
              age--; });
            }),SizedBox(width: 10.0,),RoundIconButton(icon:FontAwesomeIcons.plus,
              onPressed: (){ setState((){
                age++; });
              },),],)],)),),],
        ),),
        BottomContainer(
          buttonTitle:'CALCULATE',onTap: (){CalculatorBrain calc=CalculatorBrain(height: height,weight: Weight);
            Navigator.push(context,
            MaterialPageRoute(builder:(context)=>ResultPage(
              bmiResult: calc.calculatorBMI(),
              resultText: calc.getResult(),
              interpretation: calc.getInterpretation(),
            )));},
        )

      ],)
    );
  }
}



