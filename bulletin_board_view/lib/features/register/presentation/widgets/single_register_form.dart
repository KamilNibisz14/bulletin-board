import 'package:bulletin_board_view/features/register/presentation/bloc/register_bloc.dart';
import 'package:flutter/material.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import '../../../../core/constants.dart';
import '../../domain/entities/enum_register_form.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: must_be_immutable
class SingleRegisterForm extends StatelessWidget {
  EnumRegisterForm enumRegisterForm;
  bool isObscureText;
  SingleRegisterForm({
    required this.enumRegisterForm,
    required this.isObscureText,
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
              enumRegisterForm == EnumRegisterForm.repeatPassword? 'repeat password' :enumRegisterForm.name,
              textAlign: TextAlign.left,
            ),
          ),
          TextFormField(
            obscureText: isObscureText,
            textAlign: TextAlign.center,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: kTextFieldDecoration,
            validator: enumRegisterForm != EnumRegisterForm.phone? FormBuilderValidators.compose([
              FormBuilderValidators.required(),
              FormBuilderValidators.minLength(5),
            ]):FormBuilderValidators.compose([
              FormBuilderValidators.required(),
              FormBuilderValidators.minLength(8),
              FormBuilderValidators.numeric(),
            ]),
            onChanged: (value){
              if(enumRegisterForm == EnumRegisterForm.username){
                context.read<RegisterBloc>().add(GetUsernameEvent(username: value));
              }
              else if(enumRegisterForm == EnumRegisterForm.password){
                context.read<RegisterBloc>().add(GetPasswordEvent(password: value));
              }
              else if(enumRegisterForm == EnumRegisterForm.repeatPassword){
                context.read<RegisterBloc>().add(GetRepeatPasswordEvent(repeatPassword: value));
              }
              else if(enumRegisterForm == EnumRegisterForm.phone){
                context.read<RegisterBloc>().add(GetPhoneEvent(phone: value));
              }
              else if(enumRegisterForm == EnumRegisterForm.county){
                context.read<RegisterBloc>().add(GetCountryEvent(country: value));
              }
              else if(enumRegisterForm == EnumRegisterForm.city){
                context.read<RegisterBloc>().add(GetCityEvent(city: value));
              }
            },
          ),
        ],
      ),
    );
  }
}