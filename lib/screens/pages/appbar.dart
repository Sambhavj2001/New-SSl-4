import 'package:flutter/material.dart';
import 'package:shopping_cos/constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
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
          children: [Text('Sambhav'), Text('Indore, India')],
        ),
        Icon(Icons.shopping_cart_outlined),
      ],
    );
  }
}
