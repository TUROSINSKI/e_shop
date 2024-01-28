import 'package:e_shop/core/theme/theme_data.dart';
import 'package:e_shop/features/home/presentation/ui/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-Shop',
      theme: lightThemeData,
      home: const HomePage(),
    );
  }
}