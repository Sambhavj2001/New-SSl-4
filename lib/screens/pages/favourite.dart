import 'package:flutter/material.dart';
import 'package:shopping_cos/screens/bottom_nav_bar.dart';
import 'package:shopping_cos/screens/enum.dart';

class FavouriteScreen extends StatefulWidget {
  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FavouriteScreen"),
      ),
      bottomNavigationBar: BottomNavBar(
        selectedMenu: MenuState.favourite,
      ),
    );
  }
}
