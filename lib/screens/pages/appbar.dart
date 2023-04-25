import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_cos/constants.dart';

import '../login pages/user/current_user.dart';

class CustomAppBar extends StatelessWidget {
  final CurrentUser _currentUser = Get.put(CurrentUser());
  CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Builder(builder: (context) {
            return IconButton(
              color: KPrimaryColor,
              icon: Icon(Icons.dashboard_outlined),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          }),
        ),
        Column(
          children: [
            Text(_currentUser.user.user_name),
            Text(_currentUser.user.user_email)
          ],
        ),
        Icon(Icons.shopping_cart_outlined),
      ],
    );
  }
}
