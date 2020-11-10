import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'components/icon_content.dart';
import 'components/reusable_card.dart';

const Color DarkColor = Color(0xff1d1e33);
const Color InactiveCardColor = Color(0xFF111328);
const Color PinkColor = Color(0xFFEB1555);
enum Gender {female, male}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget> [
          Expanded(
            child: Row(
              children: <Widget> [
                Expanded(
                  child: ReusableCard(
                    onPress: (){
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    colour: selectedGender == Gender.male ? DarkColor : InactiveCardColor,
                    cardChild: IconConent(
                      contentIcon: FontAwesomeIcons.mars,
                      contentText: 'MALE',
                    )
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: (){
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    colour: selectedGender == Gender.female ? DarkColor : InactiveCardColor,
                    cardChild: IconConent(
                      contentIcon: FontAwesomeIcons.venus,
                      contentText: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget> [
                Expanded(child:
                  ReusableCard(
                   colour: DarkColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget> [
                Expanded(child:
                  ReusableCard(
                    colour: DarkColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: DarkColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: PinkColor,
            height: 80.0,
            width: double.infinity,
          )
        ],

      ),
    );
  }
}