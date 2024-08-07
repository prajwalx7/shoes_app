import 'package:flutter/material.dart';
import 'package:shoes_app/global_variables.dart';
import 'package:shoes_app/home_page.dart';
import 'package:shoes_app/product_detail_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Lato',
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.amber, primary: Colors.amber),
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          titleTextStyle: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        inputDecorationTheme: InputDecorationTheme(
          hintStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          prefixIconColor: Colors.grey.shade600,
        ),
        textTheme: const TextTheme(
          titleLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
          titleMedium: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          bodySmall: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: ProductDetailsPage(
        product: products[0],
      ),
    );
  }
}
