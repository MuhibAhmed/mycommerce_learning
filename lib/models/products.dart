// import 'package:flutter/material.dart';

class Products {
  final String imageUrl;
  final String title;
  final String description;
  final double price;
  final double rating;
  final int numberOfBuyers;
  final List<String> features;

  const Products({
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
    description:
        "Sleek and powerful laptop ideal for creatives. The MacBook Pro features exceptional build quality and performance.",
    imageUrl: "https://example.com/macbook-pro.jpg",
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
    description:
        "An affordable yet powerful laptop perfect for students and everyday tasks. The Lenovo IdeaPad offers great value.",
    imageUrl: "https://example.com/lenovo-ideapad.jpg",
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
    description:
        "A gaming laptop with top-notch specs, the ASUS ROG Zephyrus offers powerful performance for gamers.",
    imageUrl: "https://example.com/asus-rog.jpg",
    price: 1499,
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
    description:
        "Microsoft's Surface Laptop combines sleek design with powerful hardware, perfect for professionals on the go.",
    imageUrl: "https://example.com/surface-laptop.jpg",
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
    description:
        "HP Pavilion is designed for multimedia enthusiasts, featuring a vibrant display and solid performance.",
    imageUrl: "https://example.com/hp-pavilion.jpg",
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
    description:
        "A robust business laptop, the Dell Latitude offers excellent battery life and durability for professionals.",
    imageUrl: "https://example.com/dell-latitude.jpg",
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
    description:
        "The Acer Aspire 5 offers a good balance of performance and price, making it a great choice for students.",
    imageUrl: "https://example.com/acer-aspire.jpg",
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
    description:
        "The Razer Blade 15 is a premium gaming laptop with an ultra-slim design and high-performance specs.",
    imageUrl: "https://example.com/razer-blade.jpg",
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
    description:
        "With its compact size and solid performance, the Lenovo ThinkPad X1 Carbon is perfect for business travelers.",
    imageUrl: "https://example.com/thinkpad-x1.jpg",
    price: 1399,
    title: "Lenovo ThinkPad X1 Carbon",
    rating: 4.7,
    numberOfBuyers: 85,
    features: [
      "16GB RAM",
      "512GB SSD",
      "Intel Core i7",
      "14 inch Full HD Display",
    ],
  ),
  const Products(
    description:
        "Dell Inspiron 15 provides solid performance for everyday tasks, suitable for students and professionals alike.",
    imageUrl: "https://example.com/dell-inspiron.jpg",
    price: 549,
    title: "Dell Inspiron 15",
    rating: 4.1,
    numberOfBuyers: 100,
    features: [
      "8GB RAM",
      "256GB SSD",
      "Intel Core i5",
      "15.6 inch Full HD Display",
    ],
  ),
  const Products(
    description:
        "The HP Omen series is built for gaming, providing high performance and stunning graphics.",
    imageUrl: "https://example.com/hp-omen.jpg",
    price: 1299,
    title: "HP Omen 15",
    rating: 4.6,
    numberOfBuyers: 70,
    features: [
      "16GB RAM",
      "1TB SSD",
      "NVIDIA RTX 2060",
      "15.6 inch Full HD Display",
    ],
  ),
  const Products(
    description:
        "An ultraportable laptop, the ASUS ZenBook is perfect for those who need a lightweight device without sacrificing performance.",
    imageUrl: "https://example.com/asus-zenbook.jpg",
    price: 999,
    title: "ASUS ZenBook 13",
    rating: 4.4,
    numberOfBuyers: 65,
    features: [
      "16GB RAM",
      "512GB SSD",
      "Intel Core i7",
      "13.3 inch Full HD Display",
    ],
  ),
  const Products(
    description:
        "The MSI GS65 Stealth is a powerful gaming laptop with a sleek design, perfect for gaming and content creation.",
    imageUrl: "https://example.com/msi-gs65.jpg",
    price: 1599,
    title: "MSI GS65 Stealth",
    rating: 4.8,
    numberOfBuyers: 55,
    features: [
      "16GB RAM",
      "512GB SSD",
      "NVIDIA RTX 2060",
      "15.6 inch Full HD Display",
    ],
  ),
  const Products(
    description:
        "The Samsung Galaxy Book offers a versatile experience with excellent battery life and performance for daily tasks.",
    imageUrl: "https://example.com/samsung-galaxy-book.jpg",
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
