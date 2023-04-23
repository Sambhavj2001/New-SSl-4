import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_cos/screens/pages/home.dart';
import 'package:shopping_cos/screens/login pages/login_1st_page.dart';
import 'package:shopping_cos/screens/login%20pages/user/user_preferences.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Cosmetics App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: HomeScreen(),
      home: FutureBuilder(
        future: RememberUserPrefs.readUserInfo(),
        builder: (context, dataSnapShot) {
          if (dataSnapShot.data == null) {
            return LoginScreen();
          } else {
            return HomeScreen();
          }
        },
      ),
    );
  }
}
