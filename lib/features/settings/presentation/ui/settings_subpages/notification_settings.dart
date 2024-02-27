import 'package:e_shop/core/utils/colors.dart';
import 'package:e_shop/core/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NotificationSettigns extends StatefulWidget {
  const NotificationSettigns({super.key});

  @override
  State<NotificationSettigns> createState() => _NotificationSettignsState();
}

class _NotificationSettignsState extends State<NotificationSettigns> {

  bool _isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
        leading: IconButton(
            onPressed: () => GoRouter.of(context).go('/profile'),
            icon: Icon(CupertinoIcons.back)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppPadding.paddingLarge),
        child: Container(
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
                        child: Icon(CupertinoIcons.bell_slash)
                      ),
                      Text('Turn on notifications'),
                      Spacer(),
                      CupertinoSwitch(value: _isSwitched, onChanged: (bool value){setState(() {
                        _isSwitched = value;
                      });}),
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}