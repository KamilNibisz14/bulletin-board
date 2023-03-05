part of 'person_data_bloc.dart';

abstract class PersonDataEvent extends Equatable {
  const PersonDataEvent();

  @override
  List<Object> get props => [];
}

class CheckIfPersonDataExistInLocalData extends PersonDataEvent{}
