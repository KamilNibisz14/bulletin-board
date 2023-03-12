import 'package:bulletin_board_view/features/login/domain/usecases/login_user.dart';
import 'package:bulletin_board_view/features/login/repository/login_user_database.dart';
import 'package:get_it/get_it.dart';

import 'features/person_data/domain/usecases/check_If_user_exist_in_local_database.dart';
import 'features/person_data/repository/get_user_data_from_storage.dart';
import 'features/register/domain/usecases/register_user.dart';
import 'features/register/repository/register_person_data_in_database.dart';

final locator = GetIt.instance;

void setup(){
  locator.registerLazySingleton<GetUserFromStorage>(() => GetUserFromStorage());
  locator.registerLazySingleton<CheckIfUserExistInLocalDatabase>(() => CheckIfUserExistInLocalDatabase());
  locator.registerLazySingleton<RegisterUser>(() => RegisterUser());
  locator.registerLazySingleton<RegisterPersonDataInDatabase>(() => RegisterPersonDataInDatabase());
  locator.registerLazySingleton<LoginUser>(() => LoginUser());
  locator.registerLazySingleton<LoginUserDatabase>(() => LoginUserDatabase());
}