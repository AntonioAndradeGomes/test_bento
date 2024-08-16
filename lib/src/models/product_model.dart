import 'package:flutter/material.dart';

class ProductModel {
  final int id;
  final String name;
  final String details;
  final double assessment;
  final double lastPrice;
  final double newPrice;
  final String shop;
  final List<String> images;
  final Color color;

  ProductModel({
    required this.id,
    required this.name,
    required this.details,
    required this.assessment,
    required this.lastPrice,
    required this.newPrice,
    required this.shop,
    required this.images,
    required this.color,
  });
}

final productsList = [
  ProductModel(
    id: 1,
    name: 'Oranges',
    details:
        'Oranges are one of the most popular and versatile fruits in the world, known for their vibrant color, refreshing flavor, and exceptional health benefits. This round citrus fruit typically has a bright orange skin, although some varieties may appear more yellow or even reddish. The outer peel is textured and thick, protecting the juicy segments inside.',
    assessment: 4.5,
    lastPrice: 3.5,
    newPrice: 3.5,
    shop: 'Alisha Mart',
    color: const Color(0xFFfef4de),
    images: [
      'assets/img/orange_product1.png',
      'assets/img/orange_product2.png',
      'assets/img/orange_product3.png',
    ],
  ),
  ProductModel(
    id: 2,
    name: 'Organic Fresh Green Cabbage',
    color: const Color(0xFFe6ffdd),
    details:
        'ore commonly known as green cabbage, the cannonball cabbage is one of the most popular cabbage varieties. It is so named for the way its leaves wound tightly over one.',
    assessment: 4.5,
    lastPrice: 8.15,
    newPrice: 6.90,
    shop: 'Alisha Mart',
    images: [
      'assets/img/cabbage_product1.png',
      'assets/img/cabbage_product2.png',
      'assets/img/cabbage_product3.png',
    ],
  ),
  ProductModel(
    color: const Color(0xFF9466FF),
    id: 3,
    name: 'Organic Fresh Ripe Grape',
    details:
        'Ripe grapes are nature’s candy, bursting with sweetness and flavor in every bite. These small, round fruits grow in clusters on vines, with each grape encapsulating a perfect blend of juiciness and vibrant taste. Whether green, red, or deep purple, ripe grapes are a visual and sensory delight.',
    assessment: 4.5,
    lastPrice: 6.90,
    newPrice: 8.15,
    shop: 'Alisha Mart',
    images: [
      'assets/img/grape_product1.png',
      'assets/img/grape_product2.png',
      'assets/img/grape_product3.png',
    ],
  ),
  ProductModel(
    color: const Color(0xFFFF8C42),
    id: 4,
    name: 'Organic Fresh Melon',
    details:
        'Ripe grapes are nature’s candy, bursting with sweetness and flavor in every bite. These small, round fruits grow in clusters on vines, with each grape encapsulating a perfect blend of juiciness and vibrant taste. Whether green, red, or deep purple, ripe grapes are a visual and sensory delight.',
    assessment: 5.0,
    lastPrice: 12.00,
    newPrice: 8.15,
    shop: 'Alisha Mart',
    images: [
      'assets/img/melon_product1.png',
      'assets/img/melon_product2.png',
    ],
  ),
];
