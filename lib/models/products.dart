// import 'package:flutter/material.dart';

class Products {
  final int id;
  final String imageUrl;
  final String title;
  final String description;
  final double price;
  final double rating;
  final int numberOfBuyers;
  final List<String> features;

  const Products({
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

List<Products> productsList = [
  const Products(
    id: 1,
    description:
        "High-performance laptop suitable for gaming and work. HP EliteBooks are known for their robust construction and rigorous testing standards, making them suitable for use in demanding environments.",
    imageUrl:
        "https://th.bing.com/th/id/R.0e7a3fffa6f41b8b2cb95c25b0fa791a?rik=oCirMXvWuh5UDA&riu=http%3a%2f%2f3.bp.blogspot.com%2f-OipYuuNx7bc%2fUYznOsel-mI%2fAAAAAAAAA48%2fvoQrFOp9vNI%2fs1600%2flaptop.jpg&ehk=n8GXTV9JaytbWC9ckuoOP0DmWQu5pp7nylPuH9xdb3k%3d&risl=&pid=ImgRaw&r=0",
    price: 560,
    title: "Dell HP EliteBook",
    rating: 4.5,
    numberOfBuyers: 120,
    features: [
      "16GB RAM",
      "512GB SSD",
      "NVIDIA GeForce GTX 1650",
      "15.6 inch Full HD Display",
    ],
  ),
  const Products(
    id: 2,
    description:
        "Sleek and powerful laptop ideal for creatives. The MacBook Pro features exceptional build quality and performance.",
    imageUrl:
        "https://cdn-gifaf.nitrocdn.com/vaMYgyArUeaMGxPACfFmWiwLFhsubVhB/assets/images/optimized/rev-390740b/goldencamera.pk/wp-content/uploads/2022/07/1654597828_1710415.webp",
    price: 1299,
    title: "Apple MacBook Pro",
    rating: 4.8,
    numberOfBuyers: 200,
    features: [
      "16GB RAM",
      "1TB SSD",
      "Apple M1 Chip",
      "13 inch Retina Display",
    ],
  ),
  const Products(
    id: 3,
    description:
        "An affordable yet powerful laptop perfect for students and everyday tasks. The Lenovo IdeaPad offers great value.",
    imageUrl:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrzj4PXruohvq6rHWhynPe_O6ZZKPelIHOGw&s",
    price: 399,
    title: "Lenovo IdeaPad 3",
    rating: 4.2,
    numberOfBuyers: 80,
    features: [
      "8GB RAM",
      "256GB SSD",
      "Intel Core i5",
      "15.6 inch HD Display",
    ],
  ),
  const Products(
    id: 4,
    description:
        "A gaming laptop with top-notch specs, the ASUS ROG Zephyrus offers powerful performance for gamers.",
    imageUrl:
        "https://th.bing.com/th/id/R.0e7a3fffa6f41b8b2cb95c25b0fa791a?rik=oCirMXvWuh5UDA&riu=http%3a%2f%2f3.bp.blogspot.com%2f-OipYuuNx7bc%2fUYznOsel-mI%2fAAAAAAAAA48%2fvoQrFOp9vNI%2fs1600%2flaptop.jpg&ehk=n8GXTV9JaytbWC9ckuoOP0DmWQu5pp7nylPuH9xdb3k%3d&risl=&pid=ImgRaw&r=0",
    price: 1599,
    title: "ASUS ROG Zephyrus",
    rating: 4.7,
    numberOfBuyers: 150,
    features: [
      "32GB RAM",
      "1TB SSD",
      "NVIDIA RTX 3060",
      "15.6 inch Full HD Display",
    ],
  ),
  const Products(
    id: 5,
    description:
        "Microsoft's Surface Laptop combines sleek design with powerful hardware, perfect for professionals on the go.",
    imageUrl:
        "https://cdn-gifaf.nitrocdn.com/vaMYgyArUeaMGxPACfFmWiwLFhsubVhB/assets/images/optimized/rev-390740b/goldencamera.pk/wp-content/uploads/2022/07/1654597828_1710415.webp",
    price: 999,
    title: "Microsoft Surface Laptop 4",
    rating: 4.6,
    numberOfBuyers: 90,
    features: [
      "16GB RAM",
      "512GB SSD",
      "Intel Core i7",
      "13.5 inch PixelSense Display",
    ],
  ),
  const Products(
    id: 6,
    description:
        "HP Pavilion is designed for multimedia enthusiasts, featuring a vibrant display and solid performance.",
    imageUrl:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrzj4PXruohvq6rHWhynPe_O6ZZKPelIHOGw&s",
    price: 650,
    title: "HP Pavilion 15",
    rating: 4.4,
    numberOfBuyers: 130,
    features: [
      "16GB RAM",
      "512GB SSD",
      "AMD Ryzen 5",
      "15.6 inch Full HD Display",
    ],
  ),
  const Products(
    id: 7,
    description:
        "A robust business laptop, the Dell Latitude offers excellent battery life and durability for professionals.",
    imageUrl:
        "https://th.bing.com/th/id/R.0e7a3fffa6f41b8b2cb95c25b0fa791a?rik=oCirMXvWuh5UDA&riu=http%3a%2f%2f3.bp.blogspot.com%2f-OipYuuNx7bc%2fUYznOsel-mI%2fAAAAAAAAA48%2fvoQrFOp9vNI%2fs1600%2flaptop.jpg&ehk=n8GXTV9JaytbWC9ckuoOP0DmWQu5pp7nylPuH9xdb3k%3d&risl=&pid=ImgRaw&r=0",
    price: 850,
    title: "Dell Latitude 5420",
    rating: 4.5,
    numberOfBuyers: 110,
    features: [
      "16GB RAM",
      "512GB SSD",
      "Intel Core i5",
      "14 inch Full HD Display",
    ],
  ),
  const Products(
    id: 8,
    description:
        "The Acer Aspire 5 offers a good balance of performance and price, making it a great choice for students.",
    imageUrl:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrzj4PXruohvq6rHWhynPe_O6ZZKPelIHOGw&s",
    price: 499,
    title: "Acer Aspire 5",
    rating: 4.3,
    numberOfBuyers: 75,
    features: [
      "8GB RAM",
      "512GB SSD",
      "AMD Ryzen 5",
      "15.6 inch Full HD Display",
    ],
  ),
  const Products(
    id: 9,
    description:
        "The Razer Blade 15 is a premium gaming laptop with an ultra-slim design and high-performance specs.",
    imageUrl:
        "https://cdn-gifaf.nitrocdn.com/vaMYgyArUeaMGxPACfFmWiwLFhsubVhB/assets/images/optimized/rev-390740b/goldencamera.pk/wp-content/uploads/2022/07/1654597828_1710415.webp",
    price: 1999,
    title: "Razer Blade 15",
    rating: 4.9,
    numberOfBuyers: 60,
    features: [
      "32GB RAM",
      "1TB SSD",
      "NVIDIA RTX 3070",
      "15.6 inch 4K OLED Display",
    ],
  ),
  const Products(
    id: 10,
    description:
        "The Samsung Galaxy Book offers a versatile experience with excellent battery life and performance for daily tasks.",
    imageUrl:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrzj4PXruohvq6rHWhynPe_O6ZZKPelIHOGw&s",
    price: 849,
    title: "Samsung Galaxy Book",
    rating: 4.3,
    numberOfBuyers: 45,
    features: [
      "8GB RAM",
      "256GB SSD",
      "Intel Core i5",
      "13.3 inch Full HD Display",
    ],
  ),
];
