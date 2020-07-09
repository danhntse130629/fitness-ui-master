import 'package:flutter/material.dart';
import 'package:fitness_flutter/bmi/constants.dart';
import 'package:fitness_flutter/bmi/components/reusable_card.dart';
import 'package:fitness_flutter/bmi/components/bottom_button.dart';
import 'package:fitness_flutter/tabs/tabs.dart';
class ResultsPage extends StatefulWidget {
  ResultsPage(
      {@required this.interpretation,
        @required this.bmiResult,
        @required this.resultText});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  _ResultsPageState createState() => _ResultsPageState();
}

class _ResultsPageState extends State<ResultsPage> {
  String _dropDownValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("assets/images/bg.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(height: 300),
            Expanded(
              flex: 5,
              child: ReusableCard(
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      widget.resultText.toUpperCase(),
                      style: kResultTextStyle,
                    ),
                    Text(
                      widget.bmiResult,
                      style: kBMITextStyle,
                    ),
                    Text(
                      widget.interpretation,
                      textAlign: TextAlign.center,
                      style: kBodyTextStyle,
                    ),
              DropdownButton(
                hint: _dropDownValue == null
                    ? Text('Diet mode', style: TextStyle(color: Colors.black, fontSize: 20),)
                    : Text(
                  _dropDownValue,
                  style: TextStyle(color: Colors.black),
                ),
                isExpanded: true,
                iconSize: 30.0,
                style: TextStyle(color: Colors.black),
                items: ['Lose weight', 'Gain weight', 'Growth Muscle'].map(
                      (val) {
                    return DropdownMenuItem<String>(
                      value: val,
                      child: Text(val),
                    );
                  },
                ).toList(),
                onChanged: (val) {
                  setState(
                        () {
                      _dropDownValue = val;
                    },
                  );
                },
              )
                  ],
                ),
              ),
            ),
            BottomButton(
              buttonTitle: 'Start',
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Tabs()));
              },
            )
          ],
        ),
      ),
    );
  }
}
