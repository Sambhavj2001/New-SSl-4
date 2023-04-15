import 'package:flutter/material.dart';
import 'package:shopping_cos/constants.dart';
import 'package:shopping_cos/screens/enum.dart';
import 'package:shopping_cos/screens/home.dart';
import 'package:shopping_cos/screens/pages/Account.dart';
import 'package:shopping_cos/screens/pages/cart.dart';
import 'package:shopping_cos/screens/pages/favourite.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
    required this.selectedMenu,
  });
  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    final Color inactive = Colors.grey;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.horizontal(
          left: Radius.circular(40),
          right: Radius.circular(40),
        ),
        boxShadow: [
          BoxShadow(offset: Offset(0, -15), blurRadius: 20),
        ],
      ),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              icon: Icon(Icons.home_outlined),
              color: MenuState.home == selectedMenu ? KPrimaryColor : inactive,
            ),
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FavouriteScreen()));
              },
              icon: Icon(Icons.favorite_border_outlined),
              color: MenuState.favourite == selectedMenu
                  ? KPrimaryColor
                  : inactive,
            ),
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ShoppingCart()));
              },
              icon: Icon(Icons.shopping_cart_outlined),
              color: MenuState.shoppingcart == selectedMenu
                  ? KPrimaryColor
                  : inactive,
            ),
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Account()));
              },
              icon: Icon(Icons.account_circle_outlined),
              color:
                  MenuState.profile == selectedMenu ? KPrimaryColor : inactive,
            ),
          ],
        ),
      ),
    );
  }
}
