import 'package:hive/hive.dart';

import '../domain/entities/get_access_user_data.dart';

class GetUserFromStorage{
    GetAccessUserData? GetUserFromLocalDatabase(){
      var box = Hive.box('UserAccessData');
      GetAccessUserData getAccessUserData = GetAccessUserData();
      getAccessUserData.ID = box.get("ID");
      getAccessUserData.username = box.get("email");
      getAccessUserData.password = box.get("password");
      return getAccessUserData;
    }
}