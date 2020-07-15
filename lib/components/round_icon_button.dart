import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundIcon extends StatelessWidget {

  final Function onPress;
  final IconData icon;

  RoundIcon({@required this.onPress, this.icon});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPress,
//      elevation: 6.0,
      elevation: 0.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
//      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0),),
      fillColor: Color(0XFF4C4F5E),
    );
  }
}