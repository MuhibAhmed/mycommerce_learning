import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mycommerce/models/cart_products.dart';

class CartItemsNotifier extends StateNotifier<List<CartProducts>> {
  CartItemsNotifier() : super([]);

  void addToCart(CartProducts item) {
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
    StateNotifierProvider<CartItemsNotifier, List<CartProducts>>((ref) {
  return CartItemsNotifier();
});
