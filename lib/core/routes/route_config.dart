import 'package:e_shop/core/routes/route_values.dart';
import 'package:e_shop/features/cart/presentation/ui/cart_page.dart';
import 'package:e_shop/features/home/presentation/ui/home_page.dart';
import 'package:e_shop/features/home/presentation/widgets/tabs/favorites_tab.dart';
import 'package:e_shop/features/home/presentation/widgets/tabs/home_tab.dart';
import 'package:e_shop/features/home/presentation/widgets/tabs/profile_tab.dart';
import 'package:e_shop/features/home/presentation/widgets/tabs/search_tab.dart';
import 'package:e_shop/features/product/presentation/ui/product_page.dart';
import 'package:e_shop/features/settings/presentation/ui/change_password.dart';
import 'package:e_shop/features/settings/presentation/ui/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class EshopRouter {
  static final GoRouter _router = GoRouter(
    routes: <RouteBase>[
      ShellRoute(
        builder: (context, state, child) => HomePage(child: child),
        routes: [
          GoRoute(
            path: '/',
            builder: (context, state) => HomeTab(),
          ),
          GoRoute(
            path: '/search',
            builder: (context, state) => SearchTab(),
          ),
          GoRoute(
            path: '/favorites',
            builder: (context, state) => FavoritesTab(),
          ),
          GoRoute(
            path: '/profile',
            builder: (context, state) => ProfileTab(),
          ),
        ],
      ),
      GoRoute(
        path: RoutePaths.product,
        pageBuilder: (context, state) => CustomTransitionPage(
          key: state.pageKey,
          child: ProductPage(),
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
      GoRoute(
        path: RoutePaths.settings,
        builder: (context, state) => SettingsPage(),
      ),
      GoRoute(
        path: RoutePaths.cart,
        builder: (context, state) => CartPage(),
      ),
      GoRoute(
        path: RoutePaths.changePassword,
        builder: (context, state) => ChangePassword(),
      ),
    ],
  );
  static GoRouter get router => _router;
}
