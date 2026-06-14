import 'package:shared_preferences/shared_preferences.dart';

abstract interface class OnBoardLocalDatasource {
  // function to set on board status to true
  Future<void> setUserOnBoard();

  // function to get on board status
  bool getUserOnBoardStatus();
}

class OnBoardLocalDataSourceImpl implements OnBoardLocalDatasource {
  // create instance of shared preferences
  final SharedPreferences sharedPreference;

  OnBoardLocalDataSourceImpl({required this.sharedPreference});

  @override
  bool getUserOnBoardStatus() {
    // get user on board
    return sharedPreference.getBool("user_onboard") ?? false;
  }

  @override
  Future<void> setUserOnBoard() async {
    // add some delay
    await Future.delayed(Duration(milliseconds: 600));
    await sharedPreference.setBool("user_onboard", true);
  }
}
