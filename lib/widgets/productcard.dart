// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:mobxdemo/Store/counter.dart';
import 'package:mobxdemo/product/product.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({Key? key, required this.product}) : super(key: key);
  final Product product;

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  final counter = Counter();
  // int cartcount = 0;
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: screenHeight * 0.16,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(widget.product.imgeurl),
                    ),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'NPR. ${widget.product.price}',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(widget.product.name),
                  Text('Quantity: ${widget.product.quantity} kg'),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 30,
          right: 10,
          child: GestureDetector(
            child: const CircleAvatar(
              backgroundColor: Colors.pink,
              child: Icon(Icons.add),
            ),
            onTap: () {
              // counter.increment();
              // if (counter.increment() == 1) {
              //   carts.add(
              //     Cart(
              //       product: widget.product,
              //     ),
              //   );
              // }
              counter.add(widget.product);

              print(counter.carts);
            },
          ),
        ),
      ],
    );
  }
}
