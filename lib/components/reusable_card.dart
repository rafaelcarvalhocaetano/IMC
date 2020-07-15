import 'package:flutter/cupertino.dart';

class ReusableCard extends StatelessWidget {

  final Color colors;
  final Widget cardChild;
  final Function onPress;

  ReusableCard({@required this.colors, this.cardChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        decoration: BoxDecoration(
          color: this.colors,
          borderRadius: BorderRadius.circular(10.0),
        ),
        margin: EdgeInsets.all(15.0),
      ),
    );
  }
}
