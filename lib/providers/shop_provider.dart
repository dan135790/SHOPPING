// lib/providers/shop_provider.dart
import 'package:flutter/foundation.dart';
import '../models/product.dart';

class ShopProvider with ChangeNotifier {
  // بيانات ثابتة (static) بدل الـAPI
  final List<Product> products = const [
    Product(
      id: 'p1',
      title: 'كاميرا احترافية',
      price: '23,000 LE',
      imageUrl: 'https://picsum.photos/seed/p1/400/300',
      description: 'كاميرا بدقة عالية مناسبة للتصوير الفوتوغرافي والفيديو.',
    ),
    Product(
      id: 'p2',
      title: 'لابتوب 14 بوصة',
      price: '44,500 LE',
      imageUrl: 'https://picsum.photos/seed/p2/400/300',
      description: 'لابتوب أداء قوي للدراسة والشغل، بطارية ممتازة.',
    ),
    Product(
      id: 'p3',
      title: 'سماعات بلوتوث',
      price: '5,999 LE',
      imageUrl: 'https://picsum.photos/seed/p3/400/300',
      description: 'صوت واضح وعزل ضوضاء، شحن سريع.',
    ),
    Product(
      id: 'p4',
      title: 'شاشة 27" 2K',
      price: '11,499 LE',
      imageUrl: 'https://picsum.photos/seed/p4/400/300',
      description: 'ألوان دقيقة ومعدل تحديث 144Hz للألعاب والجرافكس.',
    ),
  ];

  Product byId(String id) => products.firstWhere((p) => p.id == id);
}
