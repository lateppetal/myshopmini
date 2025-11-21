import 'package:flutter/material.dart';
import 'product.dart';
import 'product_list_data.dart';
import 'product_card.dart';
import 'product_detail_page.dart';

class ProductListPage extends StatelessWidget {
  final String category;
  const ProductListPage({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    List<Product> filteredProducts = allProducts
        .where((product) => product.category == category)
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(category, style: const TextStyle(color: Colors.black)),
      ),
      body: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                '$category Products',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ),
          const SizedBox(height: 12),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(12),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 0.72,
              ),
              itemCount: filteredProducts.length,
              itemBuilder: (context, index) {
                final product = filteredProducts[index];
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            ProductDetailPage(product: product),
                      ),
                    ); // Handle product tap if needed
                  },
                  child: ProductCard(product: product),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
