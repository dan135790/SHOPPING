import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductDetailsScreen extends StatelessWidget {
  final Product product; // ← هنا بنعرف المتغير اللي يستقبل المنتج

  const ProductDetailsScreen({super.key, required this.product}); // ← بنمرره كـ parameter

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.title)), // ← نستخدمه هنا
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Image.network(product.imageUrl, fit: BoxFit.cover),
          ),
          const SizedBox(height: 12),
          Text(product.title,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 4),
          Text(product.price,
              style: const TextStyle(fontSize: 16, color: Colors.indigo)),
          const SizedBox(height: 12),
          Text(product.description),
        ],
      ),
    );
  }
}
