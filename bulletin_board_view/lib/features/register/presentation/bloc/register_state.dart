part of 'register_bloc.dart';

abstract class RegisterState extends Equatable {
  const RegisterState();
  
  @override
  List<Object> get props => [];
}

class RegisterInitial extends RegisterState {}
class EnableRegister extends RegisterState {}
class UnenableRegister extends RegisterState {}
class PasswordError extends RegisterState{}
class PhoneError extends RegisterState{}
class UsernameError extends RegisterState{}

