import 'package:bodymassindexapp/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'ReuseContainer.dart';
import 'constants.dart';
import 'InputPage.dart';
import 'Bottom.dart';

class ResultsPage extends StatelessWidget {

  ResultsPage({@required this.bmiResult
    ,@required this.advice, @required this.resultText});

  final String bmiResult;
  final String advice;
  final String resultText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('BMI CALCULATOR',style:TextStyle(color: Color(0xFF7b1fa2)),)),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                    child: Text('Your Result', style: TextStyle(fontSize: 50.0,fontWeight: FontWeight.bold),)),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReuseContainer(
                Calas: kActiveCardColor,
                childCard: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(resultText.toUpperCase(), style:kWeightType),

                    Text(bmiResult, style:kBMIReading),
                    Text(advice,textAlign: TextAlign.center, style:kBodyText),
                  ],
                ),

              ),

            ),
            BottomButton(botomText: 'RE- CALCULATE',onTap: (){
              Navigator.pop(context);
            },)
          ],
        )

    );
  }
}
