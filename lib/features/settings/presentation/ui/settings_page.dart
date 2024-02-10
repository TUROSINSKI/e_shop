import 'package:e_shop/core/utils/colors.dart';
import 'package:e_shop/core/utils/constants.dart';
import 'package:e_shop/features/home/presentation/widgets/profile_tab_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account Details and Settings'),
        leading: IconButton(
            onPressed: () => GoRouter.of(context).go('/profile'),
            icon: Icon(CupertinoIcons.back)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: AppPadding.paddingLarge,
                  vertical: AppPadding.paddingMedium),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Account details',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: AppPadding.paddingSmall),
                    child: GestureDetector(
                      child: Container(
                        width: double.maxFinite,
                        height: 88,
                        decoration: BoxDecoration(
                            color: AppColors.secondaryColor,
                            borderRadius:
                                BorderRadius.vertical(top: Radius.circular(8))),
                        child: Padding(
                            padding:
                                const EdgeInsets.all(AppPadding.paddingSmall),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Tomasz Turosiński',
                                    style: TextStyle(fontSize: 16)),
                                Text('123 456 789',
                                    style: TextStyle(fontSize: 16)),
                                Text('tomekturosinski@gmail.com',
                                    style: TextStyle(fontSize: 16))
                              ],
                            )),
                      ),
                    ),
                  ),
                  SettingsButton(
                    text: 'Change your details',
                    onTap: () {},
                  ),
                  SettingsButton(
                    text: 'Change your email',
                    radius: BorderRadius.vertical(bottom: Radius.circular(8)),
                    onTap: () {},
                  ),
                  SizedBox(height: AppPadding.paddingLarge),
                  Text('Settings',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  SettingsButton(
                      text: 'Change your password',
                      radius: BorderRadius.vertical(top: Radius.circular(8)), onTap: ()=>GoRouter.of(context).go('/changepassword'),),
                  SettingsButton(text: 'App settings', onTap: (){},),
                  SettingsButton(
                      text: 'Marketing consents',
                      radius:
                          BorderRadius.vertical(bottom: Radius.circular(8)), onTap: (){},),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: AppPadding.paddingLarge,
                vertical: AppPadding.paddingLarge * 2),
            child: ProfileTabButton(
                text: 'Delete account',
                radius: BorderRadius.circular(8),
                textColor: Colors.redAccent),
          )
        ],
      ),
    );
  }
}

class SettingsButton extends StatelessWidget {
  final String text;
  final BorderRadius? radius;
  final Function() onTap;
  const SettingsButton({
    super.key,
    required this.text,
    this.radius,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppPadding.paddingSmall),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: double.maxFinite,
          height: 40,
          decoration: BoxDecoration(
              color: AppColors.secondaryColor, borderRadius: radius),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(AppPadding.paddingSmall),
                child: Text(
                  text,
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Icon(CupertinoIcons.forward)
            ],
          ),
        ),
      ),
    );
  }
}
