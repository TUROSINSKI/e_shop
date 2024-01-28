import 'package:e_shop/core/utils/colors.dart';
import 'package:e_shop/core/utils/constants.dart';
import 'package:e_shop/features/home/presentation/widgets/categories.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
            child: IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.cart)),
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
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: AppPadding.paddingLarge),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.15,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColors.accentColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: AppPadding.paddingLarge,
                        vertical: AppPadding.paddingMedium),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Sales',
                            style: TextStyle(
                                color: AppColors.mainColor, fontSize: 32)),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: AppPadding.paddingMedium,
                              vertical: AppPadding.paddingSmall),
                          decoration: BoxDecoration(
                              color: AppColors.mainColor,
                              borderRadius: BorderRadius.circular(16)),
                          child: const Text(
                            'Up to 40%',
                            style: TextStyle(color: AppColors.accentColor),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: AppPadding.paddingLarge),
                    child: Container(
                      child: Image.asset('assets/images/saleTabImage.png'),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(AppPadding.paddingLarge),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: AppPadding.paddingMedium),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Categories', style: TextStyle(fontSize: 20)),
                      Text(
                        'See all',
                        style: TextStyle(
                            color: AppColors.accentColor,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 32,
                  child: ListView.separated(
                    separatorBuilder: (context, index) =>
                        const SizedBox(width: 12),
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 100,
                        // height: 32,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: TextColors.mainTextColor, width: 2),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Center(child: Text(categories[index].name)),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: AppPadding.paddingLarge),
              child: GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: AppPadding.paddingLarge,
                      crossAxisSpacing: AppPadding.paddingLarge,
                      childAspectRatio: 0.8),
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Expanded(
                          child: Container(
                            // height: 142,
                            // width: 160,
                            decoration: BoxDecoration(
                                color: AppColors.secondaryColor,
                                borderRadius: BorderRadius.circular(8)),
                            child: Image.asset('assets/images/airPods.png'),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('AirPods',
                                style: TextStyle(
                                    color: TextColors.accentTextColor)),
                            Text('⭐4.9',
                                style: TextStyle(fontWeight: FontWeight.bold))
                          ],
                        ),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text('\$249.99',
                                style: TextStyle(fontWeight: FontWeight.bold))),
                      ],
                    );
                  }),
            ),
          )
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: MediaQuery.of(context).size.height * 0.1,
        child: BottomNavigationBar( 
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
