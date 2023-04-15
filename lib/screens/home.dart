import 'package:flutter/material.dart';
import 'package:shopping_cos/screens/bottom_nav_bar.dart';
import 'package:shopping_cos/screens/enum.dart';
import 'package:shopping_cos/screens/home_body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeBody(),
      bottomNavigationBar: BottomNavBar(
        selectedMenu: MenuState.home,
      ),
    );
  }
}
