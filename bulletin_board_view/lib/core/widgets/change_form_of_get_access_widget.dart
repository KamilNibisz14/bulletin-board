import 'package:bulletin_board_view/core/constants.dart';
import 'package:bulletin_board_view/features/register/presentation/pages/register_page.dart';
import 'package:flutter/material.dart';

class ChangeFormOfAccessWidget extends StatelessWidget {
  VoidCallback onTap;
  String changeGetAccess;
  ChangeFormOfAccessWidget({
    required this.changeGetAccess,
    required this.onTap,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double fontSize = screenHeight /40 ;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(width: 1, color: mainColor)
          )
        ),
        child: Text(
          'Change to ' + changeGetAccess,
          style: TextStyle(
            fontSize: fontSize,
            color: mainColor
          ),
        ),
      ),
    );
  }
}