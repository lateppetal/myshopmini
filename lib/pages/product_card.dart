import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'product.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({super.key, required this.product});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          product.image,
          height: 150,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Text(
          product.name,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Text(
          NumberFormat.currency(
            locale: 'id_ID',
            symbol: 'Rp ',
            decimalDigits: 0,
          ).format(product.price),
        ),
      ],
      // return Card(
      //   shape: RoundedRectangleBorder(
      //     borderRadius: BorderRadiusGeometry.circular(16),
      //   ),
      //   elevation: 3,
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       ClipRRect(
      //         borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
      //         child: Image.asset(
      //           product.image,
      //           height: 120,
      //           width: double.infinity,
      //           fit: BoxFit.cover,
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Text(
      //           product.name,
      //           style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.symmetric(horizontal: 8),
      //         child: Text(
      //           'Rp ${product.price.toStringAsFixed(0)}',
      //           style: const TextStyle(fontSize: 14, color: Colors.blueGrey),
      //         ),
      //       ),
      //       const SizedBox(height: 8),
      //     ],
      //   ),
    );
  }
}
