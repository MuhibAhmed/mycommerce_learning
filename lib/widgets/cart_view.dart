import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mycommerce/models/products.dart';
import 'package:mycommerce/provider/cart_provider.dart';

class CartView extends ConsumerWidget {
  final List<Products> cartItems;

  const CartView({super.key, required this.cartItems});

  Map<Products, int> countProducts(List<Products> list) {
    // Create a map to store counts
    Map<Products, int> counts = {};

    // Iterate through the list and count occurrences
    for (var item in list) {
      if (counts.containsKey(item)) {
        counts[item] = counts[item]! + 1; // Increment count
      } else {
        counts[item] = 1; // Initialize count
      }
    }
    return counts;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final countOfEachProduct = countProducts(cartItems);
    final distinctProductsList = countOfEachProduct.keys.toList();
    return ListView.separated(
      itemCount: distinctProductsList.length,
      itemBuilder: (context, index) {
        final product = distinctProductsList[index];

        final productCount = countOfEachProduct[distinctProductsList[index]];
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                // color: Colors.red,
                product.imageUrl,
                width: 100,
                height: 100,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        product.title,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      IconButton(
                        icon: const Icon(Icons.close, color: Colors.black),
                        onPressed: () {
                          ref
                              .read(cartProvider.notifier)
                              .removeFromCart(distinctProductsList[index].id);
                        },
                      ),
                    ],
                  ),
                  const Text(
                    "Color: Red",
                    style: TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$${product.price.toStringAsFixed(2)}',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: IconButton(
                              icon: const Icon(Icons.add),
                              onPressed: () {
                                ref
                                    .read(cartProvider.notifier)
                                    .addToCart(distinctProductsList[index]);
                              },
                            ),
                          ),
                          const SizedBox(width: 8),
                          Text(productCount.toString()),
                          const SizedBox(width: 8),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: IconButton(
                              icon: const Icon(Icons.remove),
                              onPressed: () {
                                ref
                                    .read(cartProvider.notifier)
                                    .decreaseQuantity(
                                        distinctProductsList[index]);
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        );
      },
      separatorBuilder: (context, index) {
        return const Divider(
          color: Colors.grey,
          thickness: 0.5,
        );
      },
    );
  }
}
