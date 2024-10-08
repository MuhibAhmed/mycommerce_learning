import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:mycommerce/screens/cart_screen.dart';
import 'package:mycommerce/screens/homescreen.dart';
// import 'package:mycommerce/models/products.dart';
// import 'package:mycommerce/screens/cart_screen.dart';
// import 'package:mycommerce/models/products.dart';
// import 'package:mycommerce/screens/productscreen.dart';
// import 'package:mycommerce/screens/homescreen.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'My Commerce',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 14, 22, 113)),
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        home: const Homescreen());
    // Homescreen());
    // ProductScreen(product: productsList[0]));
  }
}
