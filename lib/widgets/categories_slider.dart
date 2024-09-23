import 'package:flutter/material.dart';

class CategorySlider extends StatelessWidget {
  final List<String> categories = [
    'Smart Phones',
    'Laptop',
    'Handsfree',
    'Headsets',
    'Charges',
    'SmartWatch',
    'Powerbank',
  ];

  CategorySlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          vertical: 10.0), // Padding for the container
      height: 50.0, // Height of the slider
      child: ListView.builder(
        scrollDirection: Axis.horizontal, // Horizontal scroll direction
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(
                horizontal: 8.0), // Spacing between tags
            child: Chip(
              label: Text(
                categories[index],
                style: const TextStyle(color: Colors.grey),
              ),
              backgroundColor: Colors.transparent,
              side: const BorderSide(
                  color: Colors.black,
                  width: 2), // Customize the background color
              padding: const EdgeInsets.symmetric(
                horizontal: 12.0,
              ), // Padding for the text
            ),
          );
        },
      ),
    );
  }
}
