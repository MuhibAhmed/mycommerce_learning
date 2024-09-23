import 'package:flutter/material.dart';

class RatingWidget extends StatelessWidget {
  final double rating; // The number rating (e.g. 4.5)

  const RatingWidget({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.star, // Display the star icon
          color: Colors.amber, // Color of the star
          size: 24.0, // Size of the star
        ),
        const SizedBox(
            width: 4), // Add some space between star and rating number
        Text(
          rating.toString(), // Display the rating number
          style: const TextStyle(
            fontSize: 18.0, // Size of the rating number
            fontWeight: FontWeight.bold, // Make the text bold
          ),
        ),
      ],
    );
  }
}
