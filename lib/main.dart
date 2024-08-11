import 'package:flutter/material.dart';
import 'package:shoes_app/screens/cart_page.dart';
import 'package:shoes_app/model/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping App',
      theme: appTheme(),
      debugShowCheckedModeBanner: false,
      home: const CartPage(),
    );
  }
}
