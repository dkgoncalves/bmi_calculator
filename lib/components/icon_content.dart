import 'package:flutter/material.dart';

class IconConent extends StatelessWidget {
  final IconData contentIcon;
  final String contentText;

  IconConent({@required this.contentIcon, this.contentText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget> [
        Icon(
          contentIcon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          contentText,
          style: TextStyle(
            color: Color(0xFF8D8E98),
            fontSize: 18.0,
          ),
        )
      ],
    );
  }
}
