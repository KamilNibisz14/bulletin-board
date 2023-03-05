import 'package:bulletin_board_view/features/login/domain/usecases/enum_login_form.dart';
import 'package:bulletin_board_view/features/login/presentation/widgets/login_button.dart';
import 'package:bulletin_board_view/features/login/presentation/widgets/single_login_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/login_bloc.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SingleLoginForm(
                enumLoginForm: EnumLoginForm.username,
                isObscureText: false,
              ),
              SingleLoginForm(
                enumLoginForm: EnumLoginForm.password,
                isObscureText: true,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10,bottom: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    BlocBuilder<LoginBloc, LoginState>(
                      builder: (context, state) {
                        if(state is EnableLogin){
                          return LoginButton(
                            isEnable: true,
                            onTap: () => context.read<LoginBloc>().add(Login()),
                          );
                        }
                        else{
                          return LoginButton(
                            isEnable: false, 
                            onTap: (){}
                          );
                        }
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
