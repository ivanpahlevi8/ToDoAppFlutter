import 'package:shared_preferences/shared_preferences.dart';

abstract interface class UserLoginDatasource {
  // function to get status is user logged in
  bool getUserLoginStatus();

  // function to set user log in
  Future<void> geUserLogin();
}

class UserLoginDatasourceImpl implements UserLoginDatasource {
  final SharedPreferences sharedPreferences;

  UserLoginDatasourceImpl({required this.sharedPreferences});

  @override
  Future<void> geUserLogin() async {
    sharedPreferences.setBool("user_login", true);
  }

  @override
  bool getUserLoginStatus() {
    return sharedPreferences.getBool("user_login") ?? false;
  }
}
