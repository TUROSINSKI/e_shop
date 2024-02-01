import 'package:e_shop/core/routes/route_values.dart';
import 'package:e_shop/core/utils/colors.dart';
import 'package:e_shop/core/utils/constants.dart';
import 'package:e_shop/features/home/presentation/widgets/categories.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SearchTab extends StatelessWidget {
  const SearchTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          scrolledUnderElevation: 0.0,
          title: Padding(
            padding: EdgeInsets.only(left: AppPadding.paddingSmall),
            child: const Text('Search'),
          ),
          toolbarHeight: MediaQuery.of(context).size.height * 0.1,
          actions: [
            Padding(
              padding: EdgeInsets.only(right: AppPadding.paddingSmall),
              child: IconButton(
                  onPressed: () => GoRouter.of(context).go(RoutePaths.cart),
                  icon: Icon(CupertinoIcons.cart)),
            )
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(AppPadding.paddingLarge),
              child: Container(
                padding: const EdgeInsets.only(left: 16.0, top: 8.0),
                alignment: Alignment.center,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.secondaryColor,
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 10),
                    border: InputBorder.none,
                    hintText: 'Search',
                    suffixIcon: Icon(CupertinoIcons.search),
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) => const SizedBox(height: AppPadding.paddingLarge),
                itemCount: categories.length-1,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: AppPadding.paddingLarge),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: AppPadding.paddingMedium),
                      height: 128,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          Text(categories[index+1].name, style: TextStyle(color: AppColors.mainColor, fontSize: 24))
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ));
  }
}
