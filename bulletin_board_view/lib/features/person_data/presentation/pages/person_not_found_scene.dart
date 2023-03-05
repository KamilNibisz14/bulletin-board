import 'package:bulletin_board_view/features/person_data/presentation/widgets/get_access_choice_button.dart';
import 'package:bulletin_board_view/features/register/presentation/pages/register_page.dart';
import 'package:flutter/material.dart';

import '../../../login/presentation/pages/login_page.dart';

class PersonNotFoundScene extends StatelessWidget {
  const PersonNotFoundScene({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GetAccessChoiceButton(
            isFillColor: true,
            text: 'Login',
            onTap: () => Navigator.pushNamed(context, LoginPage.id),
          ),
          GetAccessChoiceButton(
            isFillColor: false, 
            text: 'Register',
            onTap: () => Navigator.pushNamed(context, RegisterPage.id),
          )
        ],
      ),
    );
  }
}