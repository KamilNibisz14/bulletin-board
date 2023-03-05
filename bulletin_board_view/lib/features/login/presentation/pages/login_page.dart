import 'package:bulletin_board_view/core/constants.dart';
import 'package:bulletin_board_view/core/widgets/change_form_of_get_access_widget.dart';
import 'package:bulletin_board_view/features/login/presentation/widgets/login_form.dart';
import 'package:bulletin_board_view/core/widgets/get_access_title_widget.dart';
import 'package:bulletin_board_view/features/register/presentation/pages/register_page.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/get_access_top_bar.dart';
import '../../../main_bulletin_board/presentation/pages/main_bulletin_board_page.dart';


class LoginPage extends StatelessWidget {
  static const String id = "login_page";
  const LoginPage({super.key});

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
              title: "Login",
              onTap: () =>Navigator.pushNamed(context, RegisterPage.id),
              changeFormOfAccess: "register",
            )
          ),
          const Expanded(
            child: LoginForm()
          )
        ],
      ),
    );
  }
}