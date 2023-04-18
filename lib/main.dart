import 'package:flutter/material.dart';
import 'package:shopping_cos/constants.dart';
import 'package:shopping_cos/screens/home.dart';
import 'package:shopping_cos/screens/login pages/login_1st_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          appBarTheme: AppBarTheme(color: KPrimaryColor)),
      // home: HomeScreen(),
      home: loginPage(),
    );
  }
}
