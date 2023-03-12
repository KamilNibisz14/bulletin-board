import 'package:bloc/bloc.dart';
import 'package:bulletin_board_view/features/register/domain/entities/register_personal_data.dart';
import 'package:equatable/equatable.dart';

import '../../../../locator.dart';
import '../../domain/usecases/register_user.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  String username = '';
  String password = '';
  String repeatPassword = '';
  String phone = '';
  String country = '';
  String city = '';

  RegisterBloc() : super(RegisterInitial()) {
    on<RegisterEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<GetUsernameEvent>(_onGetUsernameEvent);
    on<GetPasswordEvent>(_onGetPasswordEvent);
    on<GetRepeatPasswordEvent>(_onGetRepeatPasswordEvent);
    on<GetPhoneEvent>(_onGetPhoneEvent);
    on<GetCountryEvent>(_onGetCountryEvent);
    on<GetCityEvent>(_onGetCityEvent);
    on<ClearDataEvent>(_onClearDataEvent);
    on<Register>(_onRegister);
  }
   _onGetUsernameEvent(GetUsernameEvent event, Emitter<RegisterState> emit){
    username = event.username;
    if(checkIfEnableToRegister()){
      emit(EnableRegister());
    }else if(!checkIfPasswordIsEqual()){
      emit(PasswordError());
    }
    else {
      emit(UnenableRegister());
    }
  }
  _onGetPasswordEvent(GetPasswordEvent event, Emitter<RegisterState> emit){
    password = event.password;
    if(checkIfEnableToRegister()){
      emit(EnableRegister());
    }else if(!checkIfPasswordIsEqual()){
      emit(PasswordError());
    }
    else {
      emit(UnenableRegister());
    }
  }
  _onGetRepeatPasswordEvent(GetRepeatPasswordEvent event, Emitter<RegisterState> emit){
    repeatPassword = event.repeatPassword;
    if(checkIfEnableToRegister()){
      emit(EnableRegister());
    }else if(!checkIfPasswordIsEqual()){
      emit(PasswordError());
    }
    else {
      emit(UnenableRegister());
    }
  }
  _onGetPhoneEvent(GetPhoneEvent event, Emitter<RegisterState> emit){
    phone = event.phone;
    if(checkIfEnableToRegister()){
      emit(EnableRegister());
    }else if(!checkIfPasswordIsEqual()){
      emit(PasswordError());
    }
    else {
      emit(UnenableRegister());
    }
  }
  _onGetCountryEvent(GetCountryEvent event, Emitter<RegisterState> emit){
    country = event.country;
    if(checkIfEnableToRegister()){
      emit(EnableRegister());
    }else if(!checkIfPasswordIsEqual()){
      emit(PasswordError());
    }
    else {
      emit(UnenableRegister());
    }
  }
  _onGetCityEvent(GetCityEvent event, Emitter<RegisterState> emit){
    city = event.city;
    if(checkIfEnableToRegister()){
      emit(EnableRegister());
    }else if(!checkIfPasswordIsEqual()){
      emit(PasswordError());
    }
    else {
      emit(UnenableRegister());
    }
  }
  _onRegister(Register event, Emitter<RegisterState> emit)async{
    RegisterPersonalData personalData = RegisterPersonalData(city: city, country: country, password: password, phone: phone, repeatPassword: repeatPassword, username: username);
    await locator.get<RegisterUser>().registerUser(personalData).then((value) {
      if(value != 'OK'){
        emit(BackendError(respone: value));
      }else{
        emit(RegisterSuccesfull());
      }
    });
  }
  _onClearDataEvent(ClearDataEvent event, Emitter<RegisterState> emit){
    username = '';
    password = '';
    repeatPassword = '';
    phone = '';
    country = '';
    city = '';
    emit(UnenableRegister());
  }

  bool checkIfPasswordIsEqual(){
    return password == repeatPassword;
  }
  bool checkIfEnableToRegister(){
    return  username.length > 4 && password.length > 4 && checkIfPasswordIsEqual() && phone.length > 7 && isNumeric(phone) && country.length > 4 && city.length > 4;
  }
  bool isNumeric(String s) {
    if(s == null) {
      return false;
    }
    return int.tryParse(s) != null;
  }


}
