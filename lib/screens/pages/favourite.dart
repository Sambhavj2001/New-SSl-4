import 'package:flutter/material.dart';
import 'package:shopping_cos/constants.dart';
import '../products/product_widget.dart';
import '../products/products.dart';

class FavourtieScreen extends StatefulWidget {
  final List<Product> favoritedProducts;
  const FavourtieScreen({Key? key, required this.favoritedProducts})
      : super(key: key);

  @override
  State<FavourtieScreen> createState() => _FavourtieScreenState();
}

class _FavourtieScreenState extends State<FavourtieScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: widget.favoritedProducts.isEmpty
          ? Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 100,
                    child: Image.asset('assets/images/fav.png'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Your favorited Products',
                    style: TextStyle(
                      color: KPrimaryColor,
                      fontWeight: FontWeight.w300,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            )
          : Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 30),
              height: size.height * .5,
              child: ListView.builder(
                  itemCount: widget.favoritedProducts.length,
                  scrollDirection: Axis.vertical,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return ProductWidget(
                        index: index, productList: widget.favoritedProducts);
                  }),
            ),
    );
  }
}
