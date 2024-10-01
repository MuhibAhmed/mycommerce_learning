import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mycommerce/models/products.dart';

class FavouriteItemNotifier extends StateNotifier<List<Products>> {
  FavouriteItemNotifier() : super([]); //default data

  void togglefavourite(Products i) {
    if (state.contains(i)) {
      state = state.where((p) {
        //wo sare items/p list me jany do (return krdo) jinki id i ki id ky brabr nh h
        return p.id != i.id;
      }).toList();
    } else {
      state = [...state, i];
    }
  }

  void removeFavourite(Products i) {
    if (state.contains(i)) {
      state = state.where((p) {
        //wo sare items/p list me jany do (return krdo) jinki id i ki id ky brabr nh h
        return p.id != i.id;
      }).toList();
    }
  }
}

final favouriteItemProvider =
    StateNotifierProvider<FavouriteItemNotifier, List<Products>>((ref) {
  return FavouriteItemNotifier();
});
