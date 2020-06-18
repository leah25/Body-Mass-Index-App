import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.botomText,@required this.onTap});
  final String botomText;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(child: Text(botomText, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0))),
        width: double.infinity,
        margin:EdgeInsets.only(top: 10.0),
        color: kBottomContainerColor,
        height: bottomHeight,
      ),
    );
  }
}