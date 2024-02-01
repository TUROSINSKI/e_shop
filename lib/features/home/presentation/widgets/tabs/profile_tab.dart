import 'package:e_shop/core/routes/route_values.dart';
import 'package:e_shop/core/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    // Include only the content specific to the Search tab
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0.0,
        title: Padding(
          padding: EdgeInsets.only(left: AppPadding.paddingSmall),
          child: const Text('Profile'),
        ),
        toolbarHeight: MediaQuery.of(context).size.height * 0.1,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: AppPadding.paddingSmall),
            child: IconButton(onPressed: () => GoRouter.of(context).go(RoutePaths.cart), icon: Icon(CupertinoIcons.cart)),
          )
        ],
      ),
    );
  }
}