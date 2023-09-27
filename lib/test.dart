import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Assuming you have fetched the product data from the API and stored it in a variable called 'product'
    double oldPrice = 1500;
    double discountedPrice = oldPrice * 0.5;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Details'),
      ),
      body: Center(
        child: RichText(
          text: TextSpan(
            text: 'Old Price: \$${oldPrice.toStringAsFixed(2)}\n',
            style: const TextStyle(
              color: Colors.black,
              decoration: TextDecoration.lineThrough,
            ),
            children: [
              TextSpan(
                text:
                    'Discounted Price: \$${discountedPrice.toStringAsFixed(2)}',
                style: const TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
