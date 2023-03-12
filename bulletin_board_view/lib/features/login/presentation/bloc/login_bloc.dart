import 'package:bloc/bloc.dart';
import 'package:bulletin_board_view/features/login/domain/entities/login_personal_data.dart';
import 'package:bulletin_board_view/features/login/domain/usecases/login_user.dart';
import 'package:bulletin_board_view/locator.dart';
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
    on<ClearDataEvent>(_onClearDataEvent);
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
  _onClearDataEvent(ClearDataEvent event, Emitter<LoginState> emit){
    username = '';
    password = '';
    emit(UnenableLogin());
  }
  _onLogin(Login event, Emitter<LoginState> emit)async{
    LoginPersonalData loginPersonalData = LoginPersonalData(password: password, username: username);
    await locator.get<LoginUser>().legisterUser(loginPersonalData).then((value){
      print(value);
    });

  }
  bool checkIfLoginDataIsValid(){
    return password.length > 4 && username.length > 4; 
  }
}
