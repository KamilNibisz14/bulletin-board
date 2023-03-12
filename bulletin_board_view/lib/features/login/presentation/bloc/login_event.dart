part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}
class GetUsernameEvent extends LoginEvent{
  String username;
  GetUsernameEvent({
    required this.username
  });
  @override
  List<Object> get props => [username];
}
class GetPasswordEvent extends LoginEvent{
  String password;
  GetPasswordEvent({
    required this.password
  });
  @override
  List<Object> get props => [password];
}
class ClearDataEvent extends LoginEvent{}
class Login extends LoginEvent{}
