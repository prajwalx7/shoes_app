import 'package:flutter/material.dart';
import 'package:shoes_app/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping App',
      theme: ThemeData(
        fontFamily: 'Lato',
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.amber, primary: Colors.amber),
        inputDecorationTheme: InputDecorationTheme(
          hintStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          prefixIconColor: Colors.grey.shade600,
        ),
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          titleTextStyle: TextStyle(fontSize: 20, color: Colors.black),
        ),
        textTheme: const TextTheme(
          titleLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
          titleMedium: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          bodySmall: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black54),
        ),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
