import 'package:shopping_cos/screens/login pages/user/user.dart';
import 'package:get/get.dart';
import 'package:shopping_cos/screens/login%20pages/user/user_preferences.dart';

class CurrentUser extends GetxController {
  Rx<User> _CurrentUser = User(0, '', '', '').obs;

  User get user => _CurrentUser.value;

  getUserInfo() async {
    User? getuserInfoFromLocalStorage = await RememberUserPrefs.readUserInfo();
    _CurrentUser.value = getuserInfoFromLocalStorage!;
  }
}
