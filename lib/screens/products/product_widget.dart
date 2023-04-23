import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:shopping_cos/constants.dart';
import 'detail.dart';
import 'products.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({
    Key? key,
    required this.index,
    required this.productList,
  }) : super(key: key);

  final int index;
  final List<Product> productList;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            PageTransition(
                child: DetailPage(
                  productId: productList[index].productId,
                ),
                type: PageTransitionType.bottomToTop));
      },
      child: Container(
        decoration: BoxDecoration(
          color: KPrimaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        height: 80.0,
        padding: const EdgeInsets.only(left: 10, top: 10),
        margin: const EdgeInsets.only(bottom: 10, top: 10),
        width: size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: 60.0,
                  height: 60.0,
                  decoration: BoxDecoration(
                    color: KPrimaryColor,
                    shape: BoxShape.circle,
                  ),
                ),
                Positioned(
                  bottom: 5,
                  left: 0,
                  right: 0,
                  child: SizedBox(
                    height: 80.0,
                    child: Image.asset(productList[index].imageURL),
                  ),
                ),
                Positioned(
                  bottom: 5,
                  left: 80,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(productList[index].category),
                      Text(
                        productList[index].productName,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: KPrimaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.only(right: 10),
              child: Text(
                r'$' + productList[index].price.toString(),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  color: KPrimaryColor,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
