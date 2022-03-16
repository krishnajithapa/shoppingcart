import 'package:flutter/material.dart';
import 'package:mobxdemo/product/product.dart';

class CartCard extends StatefulWidget {
  const CartCard({Key? key, required this.product}) : super(key: key);
  final Product product;
  @override
  State<CartCard> createState() => _CartCardState();
}

class _CartCardState extends State<CartCard> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Card(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: screenHeight * 0.16,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(widget.product.imgeurl),
              ),
            ),
          ),
          Text(widget.product.name)
        ],
      ),
    );
  }
}
