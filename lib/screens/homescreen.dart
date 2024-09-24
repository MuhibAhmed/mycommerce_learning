// homescreen.dart

import 'package:flutter/material.dart';
import 'package:mycommerce/models/products.dart';
import 'package:mycommerce/widgets/categories_slider.dart';
import 'package:mycommerce/widgets/image_slider.dart';
import 'package:mycommerce/widgets/product_grid.dart';
import 'package:mycommerce/widgets/search_bar.dart'; // Import the SearchBar
import 'package:mycommerce/widgets/bottom_navigation.dart'; // Import the BottomNavigation

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  HomescreenState createState() => HomescreenState();
}

class HomescreenState extends State<Homescreen> {
  int selectedIndex = 0;
  final List<String> categories = [
    'Smart Phones',
    'Laptop',
    'Handsfree',
    'Headsets',
    'Charges',
    'SmartWatch',
    'Powerbank',
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Dashboard",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_bag),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Item added to cart')),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SearchBarWidget(), // Use the SearchBar widget
              const SizedBox(height: 16.0),
              ImageSlider(),
              const SizedBox(height: 16.0),

              // Row with Category Heading and See All Link
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Category',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Handle "See all" tap action
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('See all categories')),
                      );
                    },
                    child: Text(
                      'See all',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 16.0),
              CategorySlider(
                categories: categories,
              ),
              const SizedBox(height: 16.0),
              ProductGrid(
                  productList: productsList), // Add the product grid here
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigation(
        selectedIndex: selectedIndex,
        onItemTapped: onItemTapped,
      ), // Use the BottomNavigation widget
    );
  }
}
