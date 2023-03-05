import 'package:bulletin_board_view/core/constants.dart';
import 'package:bulletin_board_view/features/main_bulletin_board/presentation/bloc/main_bulletin_board_bloc.dart';
import 'package:bulletin_board_view/features/main_bulletin_board/presentation/pages/main_bulletin_board_page.dart';
import 'package:bulletin_board_view/features/register/presentation/widgets/register_form.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/get_access_top_bar.dart';
import '../../../login/presentation/pages/login_page.dart';

class RegisterPage extends StatelessWidget {
  
  static const String id = "register_page";
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double iconSize = screenHeight / 25;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: Center(
              child: GestureDetector(
                onTap: () => Navigator.pushNamed(context, MainBulletinBoardPage.id),
                child: Icon(
                  Icons.home,
                  size: iconSize,
                ),
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0, bottom: 20),
            child: GetAccessTopBar(
              title: "Register",
              onTap: () =>Navigator.pushNamed(context, LoginPage.id),
              changeFormOfAccess: "login",
            )
          ),
          Expanded(
            child: RegisterForm()
          )
        ],
      ),
    );
  }
}