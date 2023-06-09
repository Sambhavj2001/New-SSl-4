import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shopping_cos/constants.dart';
import 'package:shopping_cos/screens/pages/appbar.dart';
import 'package:shopping_cos/screens/pages/slide.dart';
import 'package:shopping_cos/screens/pages/Side_bar.dart';
import 'package:shopping_cos/screens/pages/category.dart';
import 'package:shopping_cos/screens/products/recent_products.dart';

import '../products/products.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              CustomAppBar(),
              SizedBox(height: 20),
              Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(color: Colors.black45, blurRadius: 5)
                              ]),
                          child: TextField(
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                              prefixIcon: Icon(Icons.search),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: KPrimaryColor,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black45,
                                blurRadius: 5,
                              )
                            ]),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.sort),
                        ),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: 20),
              ProductSlider(),
              CategoryList(),
              Container(height: 250, child: RecentProducts()),
            ],
          ),
        ),
      ),
      drawer: SideBar(),
    );
  }
}
