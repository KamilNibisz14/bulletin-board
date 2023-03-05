import 'package:bulletin_board_view/core/constants.dart';
import 'package:flutter/material.dart';

class GetAccessChoiceButton extends StatelessWidget {
  bool isFillColor;
  String text;
  VoidCallback onTap;
  GetAccessChoiceButton({
    required this.isFillColor,
    required this.text,
    required this.onTap,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double buttonWidth = screenWidth / 3.5;
    double buttonHeight = buttonWidth / 2;
    double buttonRadius = screenWidth / 27;
    double fontSize = screenWidth / 25;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: buttonHeight,
        width: buttonWidth,
        decoration: BoxDecoration(
          color: isFillColor? mainColor: Colors.white,
          borderRadius: BorderRadius.circular(buttonRadius),
          border: Border.all(width: 1, color: isFillColor? Colors.transparent : mainColor),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(4, 4), 
            ),
          ],
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: fontSize,
              color: isFillColor? Colors.white: mainColor
            ),
          ),
        ),
      ),
    );
  }
}