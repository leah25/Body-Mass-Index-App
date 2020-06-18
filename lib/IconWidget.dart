import 'package:flutter/material.dart';
import 'constants.dart';

class IconWidget extends StatelessWidget {

  IconWidget({this.iconData, this.label});
  final IconData iconData;
  final String label;


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(iconData, size: 60.0,color:Color(0xFF7b1fa2)),
        SizedBox(height: 10.0),
        Text(label, style:kLabelTextStyle),
      ],
    );
  }
}