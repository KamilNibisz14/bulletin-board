import 'package:bulletin_board_view/features/login/domain/entities/enum_login_form.dart';
import 'package:bulletin_board_view/features/login/presentation/bloc/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants.dart';

// ignore: must_be_immutable
class SingleLoginForm extends StatelessWidget {
  EnumLoginForm enumLoginForm;
  bool isObscureText;
  SingleLoginForm({
    required this.isObscureText,
    required this.enumLoginForm,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15,bottom: 5),
            child: Text(
              enumLoginForm.name,
              textAlign: TextAlign.left,
            ),
          ),
          TextFormField(
            obscureText: isObscureText,
            textAlign: TextAlign.center,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: kTextFieldDecoration,
            validator: FormBuilderValidators.compose([
              FormBuilderValidators.required(),
              FormBuilderValidators.minLength(5),
            ]),
            onChanged: (value){
              if(enumLoginForm == EnumLoginForm.username){
                context.read<LoginBloc>().add(GetUsernameEvent(username: value));
              }else{
                context.read<LoginBloc>().add(GetPasswordEvent(password: value));
              }
            },
          ),
        ],
      ),
    );
  }
}