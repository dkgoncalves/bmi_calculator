import 'package:flutter/material.dart';
import '../components/reusable_card.dart';
import '../components/bottom_button.dart';
import '../constants.dart';

class ResultsPage extends StatelessWidget {
  final String bmi;
  final String result;
  final String interpretation;

  ResultsPage({@required this.bmi, @required this.result, @required this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('CALCULADORA DE IMC'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            'SEU RESULTADO',
            style: kTitleTextStyle,
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kDarkColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    result,
                    style: kResultTextStyle,
                    textAlign: TextAlign.center,
                 ),
                  Text(
                    bmi,
                    style: kBMITextStyle,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    interpretation,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ]
              ),
            ),
          ),
          BottomButton(
            buttonText: 'RECALCULAR',
            onPressed: (){
              Navigator.pop(context);
            },
          ),
        ],
      )
    );
  }
}
