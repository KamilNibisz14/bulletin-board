part of 'person_data_bloc.dart';

abstract class PersonDataState extends Equatable {
  const PersonDataState();
  
  @override
  List<Object> get props => [];
}

class PersonDataInitial extends PersonDataState {}
class PersondataNotFound extends PersonDataState {}
class PersonDataFound extends PersonDataState {}