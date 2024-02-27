import 'package:e_shop/core/utils/colors.dart';
import 'package:e_shop/core/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DeliveryDetails extends StatefulWidget {
  const DeliveryDetails({super.key});

  @override
  State<DeliveryDetails> createState() => _DeliveryDetailsState();
}

class _DeliveryDetailsState extends State<DeliveryDetails> {

  double _height = 40;
  bool _isExpanded = false;

  double _heightBilling = 40;
  bool _isExpandedBilling = false;

  void _toggleHeightAddress() {
    setState(() {
      _isExpanded = !_isExpanded; 
      _height = _isExpanded ? 280 : 36;
    });
  }

  void _toggleHeightBilling() {
    setState(() {
      _isExpandedBilling = !_isExpandedBilling; 
      _heightBilling = _isExpandedBilling ? 280 : 36;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Delivery details'),
        leading: IconButton(
            onPressed: () => GoRouter.of(context).go('/profile'),
            icon: Icon(CupertinoIcons.back)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppPadding.paddingLarge),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: AppPadding.paddingMedium),
              child: GestureDetector(
                onTap: _toggleHeightAddress,
                child: AnimatedContainer(
                  curve: Curves.decelerate,
                  duration: Duration(milliseconds: 200),
                  height: _height,
                  decoration: BoxDecoration(
                    color: AppColors.secondaryColor,
                    borderRadius: BorderRadius.vertical(top: Radius.circular(8))
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: AppPadding.paddingSmall, vertical: AppPadding.paddingXSmall),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Address Details', style: TextStyle(fontSize: 16)),
                          Icon(_isExpanded ? CupertinoIcons.chevron_up : CupertinoIcons.chevron_down)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
                onTap: _toggleHeightBilling,
                child: AnimatedContainer(
                  curve: Curves.decelerate,
                  duration: Duration(milliseconds: 200),
                  height: _heightBilling,
                  decoration: BoxDecoration(
                    color: AppColors.secondaryColor,
                    borderRadius: BorderRadius.vertical(bottom: Radius.circular(8))
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: AppPadding.paddingSmall, vertical: AppPadding.paddingXSmall),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Billing Details', style: TextStyle(fontSize: 16)),
                          Icon(_isExpandedBilling ? CupertinoIcons.chevron_up : CupertinoIcons.chevron_down)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}