part of 'register_bloc.dart';

abstract class RegisterEvent extends Equatable {
  const RegisterEvent();

  @override
  List<Object> get props => [];
}

class GetUsernameEvent extends RegisterEvent{
  String username;
  GetUsernameEvent({
    required this.username
  });
  @override
  List<Object> get props => [username];
}
class GetPasswordEvent extends RegisterEvent{
  String password;
  GetPasswordEvent({
    required this.password
  });
  @override
  List<Object> get props => [password];
}
class GetRepeatPasswordEvent extends RegisterEvent{
  String repeatPassword;
  GetRepeatPasswordEvent({
    required this.repeatPassword
  });
  @override
  List<Object> get props => [repeatPassword];
}
class GetPhoneEvent extends RegisterEvent{
  String phone;
  GetPhoneEvent({
    required this.phone
  });
  @override
  List<Object> get props => [phone];
}
class GetCountryEvent extends RegisterEvent{
  String country;
  GetCountryEvent({
    required this.country
  });
  @override
  List<Object> get props => [country];
}
class GetCityEvent extends RegisterEvent{
  String city;
  GetCityEvent({
    required this.city
  });
  @override
  List<Object> get props => [city];
}

class Register extends RegisterEvent{}