// import 'package:e_shop/core/routes/route_values.dart';
// import 'package:e_shop/features/home/presentation/ui/home_page.dart';
// import 'package:e_shop/features/product/presentation/ui/product_page.dart';
// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';

// class EshopRouter {

//   static Widget _homePageRouteBuilder(BuildContext context, GoRouterState state) => const HomePage();
//   static Widget _productPageRouteBuilder(BuildContext context, GoRouterState state) => const ProductPage();

//   static final GoRouter _router = GoRouter(
//     routes: <GoRoute>[
//       GoRoute(path: RoutePaths.home, builder: _homePageRouteBuilder),
//     ]
//   );

//   static GoRouter get router => _router;
// }
import 'package:e_shop/core/routes/route_values.dart';
import 'package:e_shop/features/cart/presentation/ui/cart_page.dart';
import 'package:e_shop/features/home/presentation/ui/home_page.dart';
import 'package:e_shop/features/product/presentation/ui/product_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class EshopRouter {

  static Widget _homePageRouteBuilder(BuildContext context, GoRouterState state) => const HomePage();
  static Widget _productPageRouteBuilder(BuildContext context, GoRouterState state) => const ProductPage();
  static Widget _cartPageRouteBuilder(BuildContext context, GoRouterState state) => const CartPage();

  static final GoRouter _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(path: RoutePaths.home, builder: _homePageRouteBuilder),
      GoRoute(
        path: RoutePaths.product,
        pageBuilder: (context, state) => CustomTransitionPage(
          key: state.pageKey,
          child: _productPageRouteBuilder(context, state),
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              SlideTransition(
                  position: animation.drive(
                    Tween<Offset>(
                      begin: const Offset(1.0, 0.0),
                      end: Offset.zero,
                    ).chain(CurveTween(curve: Curves.easeInOut)),
                  ),
                  child: child),
        ),
      ),
      GoRoute(path: RoutePaths.cart, pageBuilder: (context, state) => CustomTransitionPage(
          key: state.pageKey,
          child: _cartPageRouteBuilder(context, state),
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              SlideTransition(
                  position: animation.drive(
                    Tween<Offset>(
                      begin: const Offset(1.0, 0.0),
                      end: Offset.zero,
                    ).chain(CurveTween(curve: Curves.easeInOut)),
                  ),
                  child: child),
        ),)
    ]
  );

  static GoRouter get router => _router;
}
