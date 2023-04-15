import 'package:flutter/material.dart';
import 'package:shopping_cos/screens/bottom_nav_bar.dart';
import 'package:shopping_cos/screens/enum.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Account"),
      ),
      bottomNavigationBar: BottomNavBar(
        selectedMenu: MenuState.profile,
      ),
    );
    ;
  }
}
