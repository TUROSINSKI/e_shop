import 'dart:ffi';

import 'package:e_shop/core/routes/route_values.dart';
import 'package:e_shop/core/utils/colors.dart';
import 'package:e_shop/core/utils/constants.dart';
import 'package:e_shop/features/home/presentation/ui/tabs/favorites_tab.dart';
import 'package:e_shop/features/home/presentation/ui/tabs/home_tab.dart';
import 'package:e_shop/features/home/presentation/ui/tabs/profile_tab.dart';
import 'package:e_shop/features/home/presentation/ui/tabs/search_tab.dart';
import 'package:e_shop/features/home/presentation/widgets/categories.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatefulWidget {
  final Widget child;
  const HomePage({super.key, required this.child});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  // List of widgets to display for each tab
  static final List<Widget> _widgetOptions = <Widget>[
    HomeTab(),
    SearchTab(),
    FavoritesTab(),
    ProfileTab(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  
  static const List<BottomNavigationBarItem> _navigationtOptions =
      <BottomNavigationBarItem>[
    BottomNavigationBarItem(
        label: 'Home',
        icon: Icon(CupertinoIcons.home)),
    BottomNavigationBarItem(
        label: 'Search',
        icon: Icon(CupertinoIcons.search)),
    BottomNavigationBarItem(
        label: 'Favorites',
        icon: Icon(CupertinoIcons.heart)),
    BottomNavigationBarItem(
        label: 'Profile',
        icon: Icon(CupertinoIcons.person)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0.0,
        title: Padding(
          padding: EdgeInsets.only(left: AppPadding.paddingSmall),
          child: const Text('Discover'),
        ),
        toolbarHeight: MediaQuery.of(context).size.height * 0.1,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: AppPadding.paddingSmall),
            child: IconButton(onPressed: () => GoRouter.of(context).go(RoutePaths.cart), icon: Icon(CupertinoIcons.cart)),
          )
        ],
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: SizedBox(
        height: MediaQuery.of(context).size.height * 0.1,
        child: BottomNavigationBar( 
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppColors.accentColor,
          unselectedItemColor: TextColors.mainTextColor,
          showUnselectedLabels: true,
          items: _navigationtOptions,
        ),
      ),
    );
  }
}
