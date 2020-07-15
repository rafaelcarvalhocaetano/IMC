import 'package:bmi/calculator_bmi.dart';
import 'package:bmi/components/column_card_action.dart';
import 'package:bmi/components/bottom_buttom.dart';
import 'package:bmi/constant/constant_style.dart';
import 'package:bmi/enums/gender.dart';
import 'package:bmi/components/icon_content.dart';
import 'package:bmi/pages/result_page.dart';
import 'package:bmi/components/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender selected;
  int height = 180;
  int weight = 60;
  int age = 19;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    onPress: () => setState(() => selected = Gender.male),
                    colors: selected == Gender.male
                        ? activeCardColor
                        : inactiveCardColour,
                    cardChild: IconContent(
                      iconData: FontAwesomeIcons.mars,
                      iconName: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () => setState(() => selected = Gender.female),
                    colors: selected == Gender.female
                        ? activeCardColor
                        : inactiveCardColour,
                    cardChild: IconContent(
                      iconData: FontAwesomeIcons.venus,
                      iconName: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colors: activeCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: labelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: kNumberText,
                      ),
                      Text(
                        'cm',
                        style: labelTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      inactiveTrackColor: Color(0XFF8D8E98),
                      activeTrackColor: Colors.white,
                      thumbColor: Color(0XFFEB1555),
                      overlayColor: Color(0X29EB1555),
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 30.0),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      onChanged: (double value) {
                        setState(() => height = value.round());
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colors: activeCardColor,
//                    cardChild: Column(
//                      mainAxisAlignment: MainAxisAlignment.center,
//                      children: <Widget>[
//                        Text('WEIGHT', style: labelTextStyle,),
//                        Text(weight.toString(), style: kNumberText,),
//                        Row(
//                          mainAxisAlignment: MainAxisAlignment.center,
//                          children: <Widget>[
////                            FloatingActionButton(
////                              backgroundColor: Color(0XFF4C4F5E),
////                              child: Icon(Icons.add, color: Colors.white),
////                            ),
//                            RoundIcon(onPress: () => setState(() => weight --), icon: FontAwesomeIcons.minus,),
//                            SizedBox(width: 10.0,),
////                            FloatingActionButton(
////                              backgroundColor: Color(0XFF4C4F5E),
////                              child: Icon(Icons.add, color: Colors.white),
////                            ),
//                            RoundIcon(onPress: () => setState(() => weight ++), icon: FontAwesomeIcons.plus,),
//                          ],
//                        ),
//                      ],
//                    ),
                    cardChild: ColumnCard(
                      textTile: 'WEIGHT',
                      innerValue: weight,
                      onClickIncrement: () => setState(() => weight--),
                      onClickDecrement: () => setState(() => weight++),
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colors: activeCardColor,
                    cardChild: ColumnCard(
                      textTile: 'AGE',
                      innerValue: age,
                      onClickIncrement: () => setState(() => age--),
                      onClickDecrement: () => setState(() => age++),
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(textTileButton: 'CALCULATOR', onTap: () {

            CalculatorBMI calc = CalculatorBMI(height: height, weight: weight);

            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (x) => ResultPage(
                  bmiResult: calc.calculator(),
                  resultText: calc.getResult(),
                  interpretation: calc.getInterpretation(),
                ),
              ),
            );
          },),
        ],
      ),
    );
  }
}


