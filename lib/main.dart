import 'package:e_shop/core/routes/route_config.dart';
import 'package:e_shop/core/theme/theme_data.dart';
import 'package:e_shop/features/home/presentation/ui/home_page.dart';
import 'package:e_shop/features/product/presentation/ui/product_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'E-Shop',
      theme: lightThemeData,
      routeInformationProvider: EshopRouter.router.routeInformationProvider,
          routeInformationParser: EshopRouter.router.routeInformationParser,
          routerDelegate: EshopRouter.router.routerDelegate,
      // home: const ProductPage(),
    );
  }
}