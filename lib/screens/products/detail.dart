import 'package:flutter/material.dart';
import 'package:shopping_cos/constants.dart';

import 'products.dart';

class DetailPage extends StatefulWidget {
  final int productId;
  const DetailPage({Key? key, required this.productId}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  //Toggle Favorite button
  bool toggleIsFavorated(bool isFavorited) {
    return !isFavorited;
  }

  //Toggle add remove from cart
  bool toggleIsSelected(bool isSelected) {
    return !isSelected;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List<Product> _productList = Product.productList;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 50,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.black54,
                    ),
                    child: Icon(
                      Icons.close,
                      color: KPrimaryColor,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    debugPrint('favorite');
                  },
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.black54,
                    ),
                    child: IconButton(
                        onPressed: () {
                          setState(() {
                            bool isFavorited = toggleIsFavorated(
                                _productList[widget.productId].isFavorated);
                            _productList[widget.productId].isFavorated =
                                isFavorited;
                          });
                        },
                        icon: Icon(
                          _productList[widget.productId].isFavorated == true
                              ? Icons.favorite
                              : Icons.favorite_border,
                          color: KPrimaryColor,
                        )),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 100,
            left: 20,
            right: 20,
            child: Container(
              width: size.width * .8,
              height: size.height * .8,
              padding: const EdgeInsets.all(20),
              child: Stack(
                children: [
                  Positioned(
                    top: 10,
                    left: 0,
                    child: SizedBox(
                      height: 350,
                      child:
                          Image.asset(_productList[widget.productId].imageURL),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: 0,
                    child: SizedBox(
                      height: 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ProductFeature(
                            title: 'Size',
                            productFeature: _productList[widget.productId].size,
                          ),
                          ProductFeature(
                            title: 'Humidity',
                            productFeature: _productList[widget.productId]
                                .humidity
                                .toString(),
                          ),
                          ProductFeature(
                            title: 'Temperature',
                            productFeature:
                                _productList[widget.productId].temperature,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.only(top: 80, left: 30, right: 30),
              height: size.height * .5,
              width: size.width,
              decoration: BoxDecoration(
                color: Colors.black54,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(30),
                  topLeft: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            _productList[widget.productId].productName,
                            style: TextStyle(
                              color: KPrimaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 30.0,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            r'$' +
                                _productList[widget.productId].price.toString(),
                            style: TextStyle(
                              color: KPrimaryColor,
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            _productList[widget.productId].rating.toString(),
                            style: TextStyle(
                              fontSize: 30.0,
                              color: KPrimaryColor,
                            ),
                          ),
                          Icon(
                            Icons.star,
                            size: 30.0,
                            color: KPrimaryColor,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Expanded(
                    child: Text(
                      _productList[widget.productId].decription,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        height: 1.5,
                        fontSize: 18,
                        color: KPrimaryColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: SizedBox(
        width: size.width * .9,
        height: 50,
        child: Row(
          children: [
            Container(
              height: 50,
              width: 50,
              child: IconButton(
                  onPressed: () {
                    setState(() {
                      bool isSelected = toggleIsSelected(
                          _productList[widget.productId].isSelected);

                      _productList[widget.productId].isSelected = isSelected;
                    });
                  },
                  icon: Icon(
                    Icons.shopping_cart,
                    color: _productList[widget.productId].isSelected == true
                        ? Colors.white
                        : KPrimaryColor,
                  )),
              decoration: BoxDecoration(
                  color: _productList[widget.productId].isSelected == true
                      ? KPrimaryColor.withOpacity(.5)
                      : Colors.white,
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 1),
                      blurRadius: 5,
                      color: KPrimaryColor.withOpacity(.3),
                    ),
                  ]),
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: KPrimaryColor,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0, 1),
                        blurRadius: 5,
                        color: KPrimaryColor,
                      )
                    ]),
                child: const Center(
                  child: Text(
                    'BUY NOW',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductFeature extends StatelessWidget {
  final String productFeature;
  final String title;
  const ProductFeature({
    Key? key,
    required this.productFeature,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            color: KPrimaryColor,
          ),
        ),
        Text(
          productFeature,
          style: TextStyle(
            color: KPrimaryColor,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
