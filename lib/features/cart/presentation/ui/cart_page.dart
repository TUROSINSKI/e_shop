import 'package:e_shop/core/routes/route_values.dart';
import 'package:e_shop/core/utils/colors.dart';
import 'package:e_shop/core/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0.0,
        title: Text('My cart'),
        centerTitle: true,
        leading: IconButton(
            onPressed: () => GoRouter.of(context).go(RoutePaths.home),
            icon: Icon(CupertinoIcons.back)),
        toolbarHeight: MediaQuery.of(context).size.height * 0.05,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(AppPadding.paddingMedium),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.5,
                child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: AppPadding.paddingSmall),
                        child: IntrinsicHeight(
                          child: Row(
                            children: [
                              Container(
                                height: 120,
                                width: 120,
                                decoration: BoxDecoration(
                                  color: AppColors.secondaryColor,
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Image.asset('assets/images/xboxSeriesS.png'),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(
                                      AppPadding.paddingSmall),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Xbox Series S', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                                      Text('1 TB', style: TextStyle(color: TextColors.accentTextColor, fontSize: 16)),
                                      Expanded(child: SizedBox()),
                                      Text('\$279.99', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20))
                                    ],
                                  ),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 32,
                                    width: 32,
                                    child: IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.clear, size: 20))),
                                  Row(
                                    children: [
                                      Container(
                                        height: 28,
                                        width: 28,
                                        decoration: BoxDecoration(
                                          border: Border.all(color: AppColors.secondaryColor, width: 2.0),
                                          borderRadius: BorderRadius.circular(8)
                                        ),
                                        child: IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.minus, size: 12))),
                                      Padding(
                                        padding: const EdgeInsets.all(AppPadding.paddingSmall),
                                        child: Text('1'),
                                      ),
                                      Container(
                                        height: 28,
                                        width: 28,
                                        decoration: BoxDecoration(
                                          border: Border.all(color: AppColors.secondaryColor, width: 2.0),
                                          borderRadius: BorderRadius.circular(8)
                                        ),
                                        child: IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.plus, size: 12)))
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppPadding.paddingMedium),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: AppPadding.paddingMedium),
                height: 60,
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.secondaryColor, width: 2.0),
                  borderRadius: BorderRadius.circular(16)
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Apply promo code',
                    hintStyle: TextStyle(color: TextColors.accentTextColor, fontSize: 20),
                    border: InputBorder.none
                  ),
                ),
              ), 
            ),
            Padding(
              padding: const EdgeInsets.all(AppPadding.paddingMedium),
              child: Container(
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: AppColors.secondaryColor, width: 2.0))
                ),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: AppPadding.paddingMedium),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Subtotal:', style: TextStyle(fontSize: 16)),
                          Text('Delivery fee:', style: TextStyle(fontSize: 16)),
                          Text('Discount:', style: TextStyle(fontSize: 16)),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('\$1328.99', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                          Text('\$5.00', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                          Text('15%', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppPadding.paddingMedium),
              child: Container(
                height: 60,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: AppColors.accentColor,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Center(
                  child: RichText(text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(text: 'Checkout for ', style: TextStyle(fontSize: 20)),
                      TextSpan(text: '\$1133.89', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20))
                    ]
                  )),
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
