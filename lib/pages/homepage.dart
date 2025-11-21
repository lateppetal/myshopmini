import 'package:flutter/material.dart';
import 'product_list_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('MyShop Mini'), centerTitle: true),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Kategori Produk',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductListPage(category: "Mac"),
                    ),
                  );
                },
                icon: const Icon(Icons.laptop_mac),
                label: const Text('Mac'),
              ),
              SizedBox(width: 20),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const ProductListPage(category: "iPad"),
                    ),
                  );
                },
                icon: const Icon(Icons.tablet_mac),
                label: const Text('iPad'),
              ),
              SizedBox(width: 20),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const ProductListPage(category: "iPhone"),
                    ),
                  );
                },
                icon: const Icon(Icons.phone_iphone),
                label: const Text('iPhone'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
