import 'package:flutter/material.dart';
import 'package:mycommerce/models/products.dart';
import 'package:mycommerce/screens/productscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'My Commerce',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 14, 22, 113)),
          useMaterial3: true,
        ),
        home:
            // const Homescreen()
            ProductScreen(product: productsList[8]));
  }
}
