import 'package:flutter/material.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({Key? key}) : super(key: key);

  @override
  State<CategoryList> createState() => _CategoryState();
}

class _CategoryState extends State<CategoryList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          ProductList(
            press: () {},
            icon: Icon(Icons.remove_red_eye_sharp),
            text: 'Eyes',
          ),
          ProductList(
            press: () {},
            icon: Icon(Icons.woman_outlined),
            text: 'Womens',
          ),
          ProductList(
            press: () {},
            icon: Icon(Icons.brush_outlined),
            text: 'Brush',
          ),
          ProductList(
            press: () {},
            icon: Icon(Icons.shopping_bag_outlined),
            text: 'Bags',
          ),
          ProductList(
            press: () {},
            icon: Icon(Icons.palette_outlined),
            text: 'Face Cream',
          ),
          ProductList(
            press: () {},
            icon: Icon(Icons.shopping_bag),
            text: 'Hair Products',
          ),
        ],
      ),
    );
  }
}

class ProductList extends StatelessWidget {
  const ProductList(
      {super.key, required this.icon, required this.text, required this.press});
  final Icon icon;
  final String text;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: press,
        child: Container(
          child: Chip(
              label: Row(
            children: [
              Text(text),
              icon,
            ],
          )),
        ),
      ),
    );
  }
}
