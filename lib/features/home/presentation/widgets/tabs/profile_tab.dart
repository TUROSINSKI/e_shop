import 'package:e_shop/core/routes/route_values.dart';
import 'package:e_shop/core/utils/colors.dart';
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
        toolbarHeight: MediaQuery.of(context).size.height * 0.05,
        centerTitle: false,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: AppPadding.paddingSmall),
            child: IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.gear)),
          )
        ],
      ),
      body: Container(
        width: double.maxFinite,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppPadding.paddingLarge),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: AppPadding.paddingLarge),
                child: ClipOval(
                  child: Container(
                    width: 160,
                    height: 160,
                    child: Image.asset('assets/images/avatar.png', fit: BoxFit.cover,),
                  ),
                ),
              ),
              ProfileTabButton(text: "Purchase history", radius: BorderRadius.only(topLeft: Radius.circular(8), topRight: Radius.circular(8))),
              ProfileTabButton(text: "Delivery Details"),
              ProfileTabButton(text: "Returns", radius: BorderRadius.only(bottomLeft: Radius.circular(8), bottomRight: Radius.circular(8))),
              SizedBox(height: AppPadding.paddingLarge*2),
              ProfileTabButton(text: "Support", radius: BorderRadius.only(topLeft: Radius.circular(8), topRight: Radius.circular(8)), textColor: AppColors.accentColor),
              ProfileTabButton(text: "Log out", radius: BorderRadius.only(bottomLeft: Radius.circular(8), bottomRight: Radius.circular(8)), textColor: Colors.redAccent),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileTabButton extends StatelessWidget {
  final String text;
  final BorderRadius? radius;
  final Color? textColor;
  const ProfileTabButton({
    super.key, required this.text, this.radius, this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppPadding.paddingSmall),
      child: GestureDetector(
        child: Container(
          width: double.maxFinite,
          height: 40,
          decoration: BoxDecoration(
            color: AppColors.secondaryColor,
            borderRadius: radius
          ),
          child: Center(child: Text(text, style: TextStyle(fontSize: 16, color: textColor),)),
        ),
      ),
    );
  }
}