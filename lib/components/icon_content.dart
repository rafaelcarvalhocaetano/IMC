import 'package:bmi/constant/constant_style.dart';
import 'package:flutter/cupertino.dart';

class IconContent extends StatelessWidget {

  final IconData iconData;
  final String iconName;

  IconContent({this.iconData, this.iconName});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconData,
          size: 80.0,
        ),
        SizedBox(height: 15.0,),
        Text(
          iconName,
          style: labelTextStyle,
        ),
      ],
    );
  }
}