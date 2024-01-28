import 'package:e_shop/core/routes/route_values.dart';
import 'package:e_shop/core/utils/colors.dart';
import 'package:e_shop/core/utils/constants.dart';
import 'package:e_shop/features/product/presentation/widgets/variants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: AppColors.secondaryColor,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: AppPadding.paddingLarge, vertical: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: AppColors.mainColor,
                        borderRadius: BorderRadius.circular(32),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.25),
                            spreadRadius: -2,
                            blurRadius: 20,
                            offset: Offset(0, 1),
                          ),
                        ]),
                    child: IconButton(
                      onPressed: () => GoRouter.of(context).go(RoutePaths.home),
                      icon: Icon(CupertinoIcons.back),
                      padding: EdgeInsets.only(right: 4.0),
                    )),
                Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: AppColors.mainColor,
                      borderRadius: BorderRadius.circular(32),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.25),
                            spreadRadius: -2,
                            blurRadius: 20,
                            offset: Offset(0, 1),
                          ),
                        ]
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(CupertinoIcons.share),
                    )),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Image.asset('assets/images/xboxSeriesS.png'),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.5,
                width: double.infinity,
                decoration:
                    BoxDecoration(color: AppColors.mainColor, boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    spreadRadius: -2,
                    blurRadius: 20,
                    offset: Offset(0, 1),
                  ),
                ]),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: AppPadding.paddingLarge,
                      left: AppPadding.paddingLarge,
                      right: AppPadding.paddingLarge),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Xbox series S',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 24)),
                          Container(
                            width: 100,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1.5, color: Color(0xFFEF4D4D)),
                                borderRadius: BorderRadius.circular(16)),
                            child: Padding(
                              padding: const EdgeInsets.all(
                                  AppPadding.paddingXSmall),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    CupertinoIcons.heart,
                                    color: Color(0xFFEF4D4D),
                                    size: 20,
                                  ),
                                  Text(
                                    'Add',
                                    style: TextStyle(
                                        color: Color(0xFFEF4D4D),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      Container(
                        width: 152,
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 1.5, color: TextColors.accentTextColor),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: AppPadding.paddingSmall,
                              vertical: AppPadding.paddingXSmall),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('⭐4.6 ',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Text('177 reviews',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: TextColors.accentTextColor)),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: AppPadding.paddingLarge),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.75,
                          height: MediaQuery.of(context).size.height * 0.12,
                          child: SingleChildScrollView(
                            child: Text(
                                'The Xbox Series S is a sleek, budget-friendly gaming console offering fast performance, high-resolution gaming up to 1440p at 120fps, and access to a vast game library via Xbox Game Pass.',
                                style: TextStyle(fontSize: 16)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 32,
                        child: ListView.separated(
                          separatorBuilder: (context, index) =>
                              const SizedBox(width: 12),
                          scrollDirection: Axis.horizontal,
                          itemCount: variants.length,
                          itemBuilder: (context, index) {
                            return Container(
                              width: 80,
                              // height: 32,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: TextColors.mainTextColor, width: 2),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Center(child: Text(variants[index].name)),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: AppPadding.paddingLarge),
                        child: Container(
                          padding:
                              EdgeInsets.only(top: AppPadding.paddingMedium),
                          decoration: BoxDecoration(
                              border: Border(
                                  top: BorderSide(
                                      color: AppColors.secondaryColor,
                                      width: 1.5))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('\$299.99',
                                      style: TextStyle(
                                          decoration:
                                              TextDecoration.lineThrough,
                                          color: TextColors.accentTextColor)),
                                  Text('\$279.99',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20)),
                                ],
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.55,
                                decoration: BoxDecoration(
                                    color: AppColors.accentColor,
                                    borderRadius: BorderRadius.circular(16)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: AppPadding.paddingMedium),
                                  child: Center(
                                      child: Text('Add to Cart',
                                          style: TextStyle(
                                              color: AppColors.mainColor,
                                              fontSize: 20))),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
