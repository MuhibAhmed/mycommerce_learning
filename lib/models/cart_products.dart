// import 'package:flutter/material.dart';

class CartProducts {
  final int id;
  final String imageUrl;
  final String title;
  final String description;
  final double price;
  final double rating;
  final int numberOfBuyers;
  final List<String> features;

  const CartProducts({
    required this.id,
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.price,
    required this.rating,
    required this.numberOfBuyers,
    required this.features,
  });
}
