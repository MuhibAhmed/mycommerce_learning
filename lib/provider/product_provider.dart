import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mycommerce/models/products.dart';

class ProductNotifier extends StateNotifier<List<Products>> {
  ProductNotifier() : super([...productsList]);

  void addProduct(Products p) {
    if (!state.contains(p)) {
      state = [...state, p];
    }
  }

  void removeProduct(int id) {
    state = state.where((item) {
      return item.id != id;
    }).toList();
  }
}

final productProvider =
    StateNotifierProvider<ProductNotifier, List<Products>>((ref) {
  return ProductNotifier();
});
