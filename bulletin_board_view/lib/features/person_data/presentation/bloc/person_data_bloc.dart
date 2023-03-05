import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:bulletin_board_view/locator.dart';
import 'package:equatable/equatable.dart';

import '../../domain/usecases/check_If_user_exist_in_local_database.dart';

part 'person_data_event.dart';
part 'person_data_state.dart';

class PersonDataBloc extends Bloc<PersonDataEvent, PersonDataState> {
  PersonDataBloc() : super(PersonDataInitial()) {
    on<PersonDataEvent>((event, emit) {
      
    });
    on<CheckIfPersonDataExistInLocalData>(_onCheckIfPersonDataExistInLocalData);
  }
  _onCheckIfPersonDataExistInLocalData(CheckIfPersonDataExistInLocalData event, Emitter<PersonDataState> emit){
    if(locator.get<CheckIfUserExistInLocalDatabase>().checkIfUserExistInLocalDatabase()!.username == null){
      emit(PersondataNotFound());
    }
    else{
      emit(PersonDataFound());
    }
  }
}
