import 'package:bulletin_board_view/features/register/domain/entities/enum_register_form.dart';
import 'package:bulletin_board_view/features/register/presentation/bloc/register_bloc.dart';
import 'package:bulletin_board_view/features/register/presentation/widgets/register_button.dart';
import 'package:bulletin_board_view/features/register/presentation/widgets/single_register_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleRegisterForm(
                enumRegisterForm: EnumRegisterForm.username,
                isObscureText: false,
              ),
              SingleRegisterForm(
                enumRegisterForm: EnumRegisterForm.password,
                isObscureText: true,
              ),
              SingleRegisterForm(
                enumRegisterForm: EnumRegisterForm.repeatPassword,
                isObscureText: true,
              ),
              SingleRegisterForm(
                enumRegisterForm: EnumRegisterForm.phone,
                isObscureText: false,
              ),
              SingleRegisterForm(
                enumRegisterForm: EnumRegisterForm.county,
                isObscureText: false,
              ),
              SingleRegisterForm(
                enumRegisterForm: EnumRegisterForm.city,
                isObscureText: false,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10, bottom: 30),
                child: BlocBuilder<RegisterBloc, RegisterState>(
                  builder: (context, state) {
                    if(state is EnableRegister){
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          RegisterButton(
                            isEnable: true, 
                            onTap: () => context.read<RegisterBloc>().add(Register())
                          ),
                        ],
                      );
                    }
                    else if(state is PasswordError){
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Expanded(
                            child: Center(
                              child: Padding(
                                padding: EdgeInsets.only(right: 10),
                                child: Text(
                                  "Pasword and repeat password are not the same",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.red
                                  ),
                                ),
                              ),
                            )
                          ),
                          RegisterButton(
                            isEnable: true, 
                            onTap: () => context.read<RegisterBloc>().add(Register())
                          ),
                        ],
                      );
                    }
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        RegisterButton(
                          isEnable: false, 
                          onTap: () {}
                        ),
                      ],
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
