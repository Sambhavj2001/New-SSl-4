import 'package:flutter/material.dart';
import 'package:shopping_cos/screens/bottom_nav_bar.dart';
import 'package:shopping_cos/screens/enum.dart';

class ShoppingCart extends StatefulWidget {
  const ShoppingCart({Key? key}) : super(key: key);

  @override
  State<ShoppingCart> createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
      ),
      bottomNavigationBar: BottomNavBar(
        selectedMenu: MenuState.shoppingcart,
      ),
    );
    ;
  }
}
