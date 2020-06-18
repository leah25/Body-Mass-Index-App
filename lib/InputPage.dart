import 'package:bodymassindexapp/calculations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'ReuseContainer.dart';
import 'IconWidget.dart';
import 'constants.dart';
import 'Results_Page.dart';
import 'Bottom.dart';


enum Gender{
  male,female
}

class InputPage extends StatefulWidget {

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  var maleCardColor = kInActiveCardColor;
  var femaleCardColor = kInActiveCardColor;
  int heightValue = 100;
  int weightValue = 70;
  int ageValue = 16;

  Gender selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR',style:TextStyle(color: Color(0xFF7b1fa2)),)),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(child: Row(
            children: <Widget>[
              Expanded(
                child: ReuseContainer(
                  onPress: (){
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  Calas: selectedGender == Gender.male? kActiveCardColor: kInActiveCardColor,
                  childCard: IconWidget(iconData: FontAwesomeIcons.mars,label: 'MALE',),
                ),
              ),
              Expanded(
                child: ReuseContainer(
                  onPress: (){
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  Calas: selectedGender == Gender.female? kActiveCardColor:kInActiveCardColor,
                  childCard: IconWidget(iconData: FontAwesomeIcons.venus,label: 'FEMALE',),
                ),
              ),
            ],
          ),),
          Expanded(
            child: ReuseContainer(
              Calas: kActiveCardColor,
              childCard: Column(
                mainAxisAlignment:  MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height:4.0,),

                  Text('HEIGHT', style:kLabelTextStyle),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(heightValue.toString(), style:kNumbersStyle),
                      Text('cm', style: kLabelTextStyle),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      inactiveTrackColor: Colors.white,
                      activeTrackColor: Colors.purpleAccent,
                      thumbColor: Color(0xFF6a1b9a),
                      overlayColor: Color(0x29FF0067),
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius : 12.0),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 20.0),
                    ),
                    child: Slider(
                      value: heightValue.toDouble(),
                      min: 50.0,
                      max: 300.0,
                      onChanged: (double newValue){
                        setState(() {
                          heightValue = newValue.round();
                        });

                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(child: Row(
            children: <Widget>[
              Expanded(
                child: ReuseContainer(
                  Calas: kActiveCardColor,
                  childCard: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('WEIGHT', style: kLabelTextStyle,),
                      Text(weightValue.toString(), style: kNumbersStyle,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onPressed: (){
                              setState(() {
                                weightValue--;
                              });
                            },

                          ),
                          SizedBox(width: 10,),
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            onPressed: (){
                              setState(() {
                                weightValue++;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ReuseContainer(Calas: kActiveCardColor,
                  childCard: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('AGE', style: kLabelTextStyle,),
                      Text(ageValue.toString(), style: kNumbersStyle,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onPressed: (){
                              setState(() {
                                ageValue--;
                              });
                            },

                          ),
                          SizedBox(width: 10,),
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            onPressed: (){
                              setState(() {
                                ageValue++;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),),
          BottomButton(
            botomText: 'CALCULATE YOUR BMI',onTap: (){
            Calculation calc = Calculation(height: heightValue, weight: weightValue);
            Navigator.push(context, MaterialPageRoute(builder:(context)   => ResultsPage(
              bmiResult: calc.calculateBMI(),
              advice: calc.getOutput(),
              resultText: calc.getResults(),
            ),),);
          },),
        ],
      ),
    );
  }
}


class RoundIconButton extends StatelessWidget {
  RoundIconButton({ @required this.icon, @required this.onPressed});
  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon,color: Colors.purple,),
      onPressed: onPressed,
      constraints: BoxConstraints.tightFor(
        width: 50.0,
        height: 50.0,
      ),
      shape: CircleBorder(),
      fillColor: Colors.white,

    );
  }
}
