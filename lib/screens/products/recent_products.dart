import 'package:flutter/material.dart';
import 'package:shopping_cos/constants.dart';

class RecentProducts extends StatelessWidget {
  final productList = [
    {
      'name': 'white shirt',
      'image': '',
      'price': 50,
      'disc': 'Material : sample 1',
    },
    {
      'name': 'white shirt',
      'image': '',
      'price': 50,
      'disc': 'Material : sample 1',
    },
    {
      'name': 'white shirt',
      'image': '',
      'price': 50,
      'disc': 'Material : sample 1',
    },
    {
      'name': 'white shirt',
      'image': '',
      'price': 50,
      'disc': 'Material : sample 1',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: productList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 0.70),
        itemBuilder: (BuildContext context, int index) {
          return RecentSignleProducts(
            recent_single_prod_disc: productList[index]['disc'],
            recent_single_prod_name: productList[index]['name'],
            recent_single_prod_image: productList[index]['image'],
            recent_single_prod_price: productList[index]['price'],
          );
        });
  }
}

class RecentSignleProducts extends StatefulWidget {
  final recent_single_prod_name;
  final recent_single_prod_image;
  final recent_single_prod_price;
  final recent_single_prod_disc;

  RecentSignleProducts({
    this.recent_single_prod_name,
    this.recent_single_prod_image,
    this.recent_single_prod_price,
    this.recent_single_prod_disc,
  });

  @override
  _RecentSignleProductsState createState() => _RecentSignleProductsState();
}

class _RecentSignleProductsState extends State<RecentSignleProducts> {
  @override
  bool isLike = false;
  final Color inactiveColor = Colors.black45;
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 180,
          width: 160,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: KPrimaryColor,
          ),
          child: Text('data'),
        ),
        ListTile(
          title: Text(widget.recent_single_prod_name),
          subtitle: Text('\$${widget.recent_single_prod_price}'),
          trailing: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
                color: KPrimaryColor, borderRadius: BorderRadius.circular(30)),
            child: IconButton(
              onPressed: () {
                setState(() {
                  isLike = !isLike;
                });
              },
              icon: Icon(
                isLike ? Icons.favorite : Icons.favorite_border_outlined,
                color: isLike ? Colors.red : inactiveColor,
                size: 15,
              ),
            ),
          ),
        )
      ],
    );
  }
}
