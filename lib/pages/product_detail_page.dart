import 'package:flutter/material.dart';
import 'product.dart';
import 'package:intl/intl.dart';

class ProductDetailPage extends StatelessWidget {
  final Product product;

  const ProductDetailPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final formatRupiah = NumberFormat.currency(
      locale: 'id_ID',
      decimalDigits: 0,
      symbol: 'Rp ',
    );

    return Scaffold(
      backgroundColor: Colors.white,

      //  AppBar
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text(product.name, style: const TextStyle(color: Colors.black)),
      ),
      //  Isi halaman scroll
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //  Gambar besar
            SizedBox(
              width: double.infinity,
              child: Image.asset(product.image, fit: BoxFit.cover, height: 280),
            ),

            const SizedBox(height: 20),

            //  Nama Produk
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                product.name,
                style: const TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 10),

            //  Harga Produk
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                formatRupiah.format(product.price),
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 80),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
                color: Colors.black,
                child: const Text(
                  'Kembali',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
