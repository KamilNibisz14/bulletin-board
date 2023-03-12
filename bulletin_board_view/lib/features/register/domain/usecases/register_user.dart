import 'package:bulletin_board_view/features/person_data/presentation/bloc/person_data_bloc.dart';

import '../../../../locator.dart';
import '../../repository/register_person_data_in_database.dart';
import '../entities/personal_data.dart';

class RegisterUser{
  Future<String> registerUser(PersonalData personalData)async{
    return await locator.get<RegisterPersonDataInDatabase>().registerPersonDataInDatabase(personalData.toJson());
  }
}