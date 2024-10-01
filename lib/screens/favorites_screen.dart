import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mycommerce/provider/favourite_provider.dart';
import 'package:mycommerce/widgets/product_grid.dart';

class FavoritesScreen extends ConsumerWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var favouriteList = ref.watch(favouriteItemProvider);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Favorites'),
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: ProductGrid(productList: favouriteList));
  }
}
