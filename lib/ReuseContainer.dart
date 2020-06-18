import 'package:flutter/material.dart';

class ReuseContainer extends StatelessWidget {

  ReuseContainer({ @required this.Calas, this.childCard, this.onPress});

  final Color Calas;
  final Widget childCard;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress ,
      child: Container(
        child: childCard,
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Calas ,
          borderRadius: BorderRadius.circular(10.0),

        ),

      ),
    );
  }
}