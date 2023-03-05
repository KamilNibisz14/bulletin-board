import 'package:flutter/material.dart';

class GetAccessTitleWidget extends StatelessWidget {
  String title;
  GetAccessTitleWidget({
    required this.title,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double fontSize = screenHeight / 25;
    return Text(
      title,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.w500,
        shadows: <Shadow>[
      Shadow(
        offset: Offset(3.0, 3.0),
        blurRadius: 3.0,
        color: Colors.grey
      ),
    ],
      ),
    );
  }
}