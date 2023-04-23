import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_cos/screens/login%20pages/login_1st_page.dart';
import 'package:shopping_cos/screens/login%20pages/user/current_user.dart';
import 'package:shopping_cos/screens/login%20pages/user/user_preferences.dart';

class ProfileScreen extends StatelessWidget {
  final CurrentUser _currentUser = Get.put(CurrentUser());

  signOutUser() async {
    var resultResponse = await Get.dialog(
      AlertDialog(
        backgroundColor: Colors.grey,
        title: Text(
          "Signed Out",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        content: Text("Are you sure?\nYou want to sign out ?"),
        actions: [
          TextButton(
            onPressed: () {
              Get.back();
            },
            child: Text(
              "No",
              style: TextStyle(color: Colors.black),
            ),
          ),
          TextButton(
            onPressed: () {
              Get.back(result: "Signed Out");
            },
            child: Text(
              "Yes",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
    if (resultResponse == "Signed Out") {
      RememberUserPrefs.removeUserInfo().then((value) {
        Get.off(LoginScreen());
      });
    }
  }

  Widget userInfoItemProfile(IconData iconData, String userData) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey,
      ),
      padding: EdgeInsets.all(16),
      child: Row(
        children: [
          Icon(
            iconData,
            size: 30,
            color: Colors.black,
          ),
          SizedBox(width: 16),
          Text(
            userData,
            style: TextStyle(fontSize: 15),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Center(
          child: CircleAvatar(
            radius: 150,
            backgroundImage: AssetImage(
              "images/man.png",
            ),
          ),
        ),
        SizedBox(height: 20),
        userInfoItemProfile(Icons.person, _currentUser.user.user_name),
        SizedBox(height: 20),
        userInfoItemProfile(Icons.email, _currentUser.user.user_email),
        SizedBox(height: 20),
        Center(
          child: Material(
            color: Colors.redAccent,
            borderRadius: BorderRadius.circular(8),
            child: InkWell(
              onTap: () {
                signOutUser();
              },
              borderRadius: BorderRadius.circular(20),
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  "Sign Out",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
