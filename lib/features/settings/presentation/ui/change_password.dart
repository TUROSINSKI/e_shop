import 'package:e_shop/core/utils/colors.dart';
import 'package:e_shop/core/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Change your password'),
        leading: IconButton(
            onPressed: () => GoRouter.of(context).go('/profile'),
            icon: Icon(CupertinoIcons.back)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: AppPadding.paddingMedium,
            horizontal: AppPadding.paddingLarge),
        child: Column(
          children: [
            Container(
              padding:
                  EdgeInsets.symmetric(horizontal: AppPadding.paddingMedium),
              decoration: BoxDecoration(
                  border: Border.all(
                      color: AppColors.secondaryColor,
                      width: 2.0,
                      style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(8)),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: 'Current password'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: AppPadding.paddingMedium),
              child: Container(
                padding:
                    EdgeInsets.symmetric(horizontal: AppPadding.paddingMedium),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: AppColors.secondaryColor,
                        width: 2.0,
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(8)),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: 'New password'),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: AppPadding.paddingMedium, vertical: AppPadding.paddingSmall),
              height: 160,
              decoration: BoxDecoration(
                  border:
                      Border.all(color: AppColors.secondaryColor, width: 2.0),
                  borderRadius: BorderRadius.circular(8)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Password strength: weak'),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: AppPadding.paddingSmall),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(8, (index) {
                        double totalSpacing =
                            8.0 * 7; // Total spacing between containers
                        double availableWidth =
                            MediaQuery.of(context).size.width -
                                (AppPadding.paddingLarge * 2) -
                                totalSpacing;
                        double width = availableWidth / 8;
                        return Container(
                          width: width,
                          height: 12,
                          decoration: BoxDecoration(
                            color: TextColors.accentTextColor,
                            borderRadius: BorderRadius.circular(8)
                          ),
                        );
                      }),
                    ),
                  ),
                  Text('Remember, the longer password, the more secure it is.\nUse at least 8 characters, 1 uppercase letter, 1 number and one special character.')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
