part of 'register_bloc.dart';

abstract class RegisterState{
  const RegisterState();
  
  @override
  List<Object> get props => [];
}

class RegisterInitial extends RegisterState {}
class EnableRegister extends RegisterState {}
class UnenableRegister extends RegisterState {}
class PasswordError extends RegisterState{}
class BackendError extends RegisterState{
  String respone;
  BackendError({
    required this.respone
  });
  @override
  List<Object> get props => [respone];
}
class RegisterSuccesfull extends RegisterState{}

