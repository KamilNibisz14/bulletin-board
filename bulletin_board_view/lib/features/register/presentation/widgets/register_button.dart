import 'package:bulletin_board_view/core/constants.dart';
import 'package:flutter/material.dart';

class RegisterButton extends StatelessWidget {
  bool isEnable;
  VoidCallback onTap;
  RegisterButton({
    required this.isEnable,
    required this.onTap,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double buttonWidth = screenWidth / 3.5;
    double buttonHeight = buttonWidth / 2;
    double fontSize = screenWidth / 20;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: buttonWidth,
        height: buttonHeight,
        decoration: BoxDecoration(
          color: isEnable ? secondColor:Colors.grey,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Center(
          child: Text(
            'Register',
            style: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.w500
            ),
          ),
        ),
      ),
    );
  }
}