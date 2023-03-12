import 'package:bulletin_board_view/features/login/domain/entities/login_personal_data.dart';

import '../../../../locator.dart';
import '../../repository/login_user_database.dart';

class LoginUser{
  Future<String> legisterUser(LoginPersonalData personalData)async{
    return await locator.get<LoginUserDatabase>().loginUserDatabase(personalData.toJson());
  }
}