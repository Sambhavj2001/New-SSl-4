import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_cos/screens/pages/Account.dart';
import 'package:shopping_cos/screens/pages/favourite.dart';
import 'package:shopping_cos/screens/pages/home.dart';
import 'package:shopping_cos/screens/pages/orders.dart';

class SideBar extends StatelessWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              'Sam',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            accountEmail: Text(
              'sam@gmail.com',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  'images/1.jpg',
                  height: 90,
                  width: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: BoxDecoration(
                // image: DecorationImage(
                //     image: AssetImage(
                //   'images/2.jpg',
                // )),
                image: DecorationImage(
                    image: NetworkImage(
              'https://content.pymnts.com/wp-content/uploads/2018/06/shutterstock_570190234.jpg',
            ))),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () => {
              // Get.to(HomeScreen()),
            },
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Account'),
            onTap: () => {
              // Get.to(ProfileScreen()),
            },
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('Favourite'),
            onTap: () => {
              // Navigator.push(
              // context, MaterialPageRoute(builder: (context) => FavourtieScreen()))
            },
          ),
          ListTile(
            leading: Icon(Icons.shopping_cart),
            title: Text('Shopping Cart'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.shopping_bag_outlined),
            title: Text('Your Orders'),
            onTap: () => {
              // Get.to(OrderScreen()),
            },
          ),
        ],
      ),
    );
  }
}
