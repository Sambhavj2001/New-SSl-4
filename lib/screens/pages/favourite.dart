import 'package:flutter/material.dart';
import 'package:shopping_cos/screens/bottom_nav_bar.dart';
import 'package:shopping_cos/screens/enum.dart';
import 'package:shopping_cos/screens/products/recent_products.dart';

class FavouriteScreen extends StatefulWidget {
  // final List<ProductList> productList;
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
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: RecentProducts(),
      ),
      bottomNavigationBar: BottomNavBar(
        selectedMenu: MenuState.favourite,
      ),
    );
  }
}
