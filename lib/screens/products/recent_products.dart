import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:shopping_cos/constants.dart';
import 'package:shopping_cos/screens/products/product_widget.dart';
import 'detail.dart';
import 'products.dart';

class RecentProducts extends StatefulWidget {
  const RecentProducts({Key? key}) : super(key: key);

  @override
  State<RecentProducts> createState() => _RecentProductsState();
}

class _RecentProductsState extends State<RecentProducts> {
  List<Product> _productList = Product.productList;
  bool toggleIsFavorated(bool isFavorited) {
    return !isFavorited;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 250,
            child: ListView.builder(
                itemCount: _productList.length,
                scrollDirection: Axis.horizontal,
                // scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageTransition(
                            child: DetailPage(
                                productId: _productList[index].productId),
                            type: PageTransitionType.bottomToTop),
                      );
                    },
                    child: Container(
                      width: 200,
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 10,
                            right: 20,
                            child: Container(
                              height: 50,
                              width: 50,
                              child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    bool isFavorited = toggleIsFavorated(
                                        _productList[index].isFavorated);
                                    _productList[index].isFavorated =
                                        isFavorited;
                                  });
                                },
                                icon: Icon(
                                  _productList[index].isFavorated == true
                                      ? Icons.favorite
                                      : Icons.favorite_border,
                                  color: KPrimaryColor,
                                ),
                                iconSize: 30,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 50,
                            right: 50,
                            top: 50,
                            bottom: 50,
                            child: Image.asset(_productList[index].imageURL),
                          ),
                          Positioned(
                            bottom: 15,
                            left: 20,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  _productList[index].category,
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  _productList[index].productName,
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            bottom: 15,
                            right: 20,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 2),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Text(
                                r'$' + _productList[index].price.toString(),
                                style: TextStyle(
                                    color: KPrimaryColor, fontSize: 16),
                              ),
                            ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: KPrimaryColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
    ;
  }
}
