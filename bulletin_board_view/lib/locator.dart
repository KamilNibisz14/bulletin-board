import 'package:get_it/get_it.dart';

import 'features/person_data/domain/usecases/check_If_user_exist_in_local_database.dart';
import 'features/person_data/repository/get_user_data_from_storage.dart';

final locator = GetIt.instance;

void setup(){
  locator.registerLazySingleton<GetUserFromStorage>(() => GetUserFromStorage());
  locator.registerLazySingleton<CheckIfUserExistInLocalDatabase>(() => CheckIfUserExistInLocalDatabase());
}