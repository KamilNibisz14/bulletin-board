import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  String username = '';
  String password = '';
  LoginBloc() : super(LoginInitial()) {
    on<LoginEvent>((event, emit) {
    });
    on<GetUsernameEvent>(_onGetUsernameEvent);
    on<GetPasswordEvent>(_onGetPasswordEvent);
    on<Login>(_onLogin);
  }
  _onGetUsernameEvent(GetUsernameEvent event, Emitter<LoginState> emit){
    username = event.username;
    if(checkIfLoginDataIsValid()){
      emit(EnableLogin());
    }
    else{
      emit(UnenableLogin());
    }
  }
  _onGetPasswordEvent(GetPasswordEvent event, Emitter<LoginState> emit){
    password = event.password;
    if(checkIfLoginDataIsValid()){
      emit(EnableLogin());
    }
    else{
      emit(UnenableLogin());
    }
  }
  _onLogin(Login event, Emitter<LoginState> emit){
    print('aaaaaaaaaa');
  }
  bool checkIfLoginDataIsValid(){
    return password.length > 4 && username.length > 4; 
  }
}
