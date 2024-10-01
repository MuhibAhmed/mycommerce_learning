import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mycommerce/models/products.dart';

class CartItemsNotifier extends StateNotifier<List<Products>> {
  CartItemsNotifier() : super([]); //default data

  void addToCart(Products item) {
    if (!state.contains(item)) {
      state = [...state, item];
    }
  }

  void removeToCart(int id) {
    state = state.where((item) {
      return item.id != id;
    }).toList();
  }
}

final cartProvider =
    StateNotifierProvider<CartItemsNotifier, List<Products>>((ref) {
  return CartItemsNotifier();
});
