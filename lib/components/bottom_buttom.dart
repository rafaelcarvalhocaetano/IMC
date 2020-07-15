import 'package:bmi/constant/constant_style.dart';
import 'package:flutter/cupertino.dart';

class BottomButton extends StatelessWidget {

  final String textTileButton;
  final Function onTap;

  BottomButton({this.textTileButton, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        child: Text(
            textTileButton,
            style: kLabelCalculator
        ),
        color: bottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: 80.0,
      ),
    );
  }
}