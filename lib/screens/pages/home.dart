import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_cos/screens/pages/cart.dart';
import 'package:shopping_cos/screens/pages/home_body.dart';
import 'package:shopping_cos/screens/login%20pages/user/current_user.dart';
import 'package:shopping_cos/screens/pages/Account.dart';
import 'package:shopping_cos/screens/pages/favourite.dart';
import 'package:shopping_cos/screens/pages/orders.dart';

import '../products/products.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  CurrentUser _rememberCurrentUser = Get.put(CurrentUser());

  List<Widget> _Screens() {
    return [
      HomeBody(),
      FavourtieScreen(
        favoritedProducts: favorites,
      ),
      CartScreen(
        addedToCartProducts: myCart,
      ),
      ProfileScreen(),
    ];
  }

  List _navigatorButton = [
    {
      "active_icon": Icons.home,
      "non_active_icon": Icons.home_outlined,
      "label": "Home",
    },
    {
      "active_icon": Icons.favorite,
      "non_active_icon": Icons.favorite_border_outlined,
      "label": "Favourite",
    },
    {
      "active_icon": Icons.shopping_cart,
      "non_active_icon": Icons.shopping_cart_outlined,
      "label": "Cart",
    },
    {
      "active_icon": Icons.person,
      "non_active_icon": Icons.person_outline,
      "label": "Account",
    }
  ];

  List<Product> favorites = [];

  List<Product> myCart = [];

  RxInt _indexNumber = 0.obs;

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: CurrentUser(),
      initState: (currentState) {
        _rememberCurrentUser.getUserInfo();
      },
      builder: (controller) {
        return Scaffold(
          backgroundColor: Colors.black,
          body: SafeArea(
            child: Obx(() => _Screens()[_indexNumber.value]),
          ),
          bottomNavigationBar: Obx(
            () => BottomNavigationBar(
              currentIndex: _indexNumber.value,
              onTap: (value) {
                setState(() {
                  _indexNumber.value = value;

                  final List<Product> favoritedProducts =
                      Product.getFavoritedProducts();
                  final List<Product> addedToCartProducts =
                      Product.addedToCartProducts();

                  favorites = favoritedProducts;
                  myCart = addedToCartProducts.toSet().toList();
                });
              },
              showSelectedLabels: true,
              showUnselectedLabels: true,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.white24,
              items: List.generate(
                4,
                (index) {
                  var navBtnProperty = _navigatorButton[index];
                  return BottomNavigationBarItem(
                    backgroundColor: Colors.black,
                    icon: Icon(navBtnProperty["non_active_icon"]),
                    activeIcon: Icon(navBtnProperty["active_icon"]),
                    label: navBtnProperty["label"],
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
