import 'package:bmi/components/round_icon_button.dart';
import 'package:bmi/constant/constant_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// ignore: must_be_immutable
class ColumnCard extends StatelessWidget {

  int innerValue = 60;
  final String textTile;
  final Function onClickIncrement;
  final Function onClickDecrement;

  ColumnCard({
    @required this.textTile,
    @required this.innerValue,
    @required this.onClickIncrement,
    @required this.onClickDecrement
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(textTile, style: labelTextStyle,),
        Text(innerValue.toString(), style: kNumberText,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
//                            FloatingActionButton(
//                              backgroundColor: Color(0XFF4C4F5E),
//                              child: Icon(Icons.add, color: Colors.white),
//                            ),
            RoundIcon(onPress: onClickIncrement, icon: FontAwesomeIcons.minus,),
            SizedBox(width: 10.0,),
//                            FloatingActionButton(
//                              backgroundColor: Color(0XFF4C4F5E),
//                              child: Icon(Icons.add, color: Colors.white),
//                            ),
            RoundIcon(onPress: onClickDecrement, icon: FontAwesomeIcons.plus,),
          ],
        ),
      ],
    );
  }
}
