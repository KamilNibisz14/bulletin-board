import '../../../../locator.dart';
import '../../repository/get_user_data_from_storage.dart';
import '../entities/get_access_user_data.dart';

class CheckIfUserExistInLocalDatabase{
  GetAccessUserData? checkIfUserExistInLocalDatabase(){
    return locator.get<GetUserFromStorage>().GetUserFromLocalDatabase();
  }
}