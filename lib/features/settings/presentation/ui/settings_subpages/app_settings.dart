import 'package:e_shop/core/utils/colors.dart';
import 'package:e_shop/core/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class AppSettings extends StatefulWidget {
  const AppSettings({super.key});

  @override
  State<AppSettings> createState() => _AppSettingsState();
}

class _AppSettingsState extends State<AppSettings> {

  bool _isFaceidSwitched = false;
  bool _isDarkModeSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Settings'),
        leading: IconButton(
            onPressed: () => GoRouter.of(context).go('/profile'),
            icon: Icon(CupertinoIcons.back)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppPadding.paddingLarge),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: AppColors.secondaryColor,
                borderRadius: BorderRadius.vertical(top: Radius.circular(8))
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppPadding.paddingSmall),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: AppPadding.paddingSmall),
                      child: SvgPicture.asset('assets/icons/faceid.svg'),
                    ),
                    Text('Face ID Login'),
                    Spacer(),
                    CupertinoSwitch(value: _isFaceidSwitched, onChanged: (bool value){setState(() {
                      _isFaceidSwitched = value;
                    });}),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: AppPadding.paddingSmall),
              child: GestureDetector(
                onTap: () => GoRouter.of(context).go('/notificationsettings'),
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.secondaryColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: AppPadding.paddingSmall, vertical: AppPadding.paddingSmall),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: AppPadding.paddingSmall),
                          child: Icon(CupertinoIcons.bell),
                        ),
                        Text('Notification settings'),
                        Spacer(),
                        Icon(CupertinoIcons.forward)
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: AppColors.secondaryColor,
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(8))
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppPadding.paddingSmall),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: AppPadding.paddingSmall),
                      child: Icon(CupertinoIcons.wand_rays),
                    ),
                    Text('Dark mode'),
                    Spacer(),
                    CupertinoSwitch(value: _isDarkModeSwitched, onChanged: (bool value){setState(() {
                      _isDarkModeSwitched = value;
                    });}),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}