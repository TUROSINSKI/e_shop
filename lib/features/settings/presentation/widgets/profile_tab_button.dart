import 'package:e_shop/core/utils/colors.dart';
import 'package:e_shop/core/utils/constants.dart';
import 'package:flutter/material.dart';

class ProfileTabButton extends StatelessWidget {
  final String text;
  final BorderRadius? radius;
  final Color? containerColor;
  final Color? textColor;
  const ProfileTabButton({
    super.key, required this.text, this.radius, this.textColor, this.containerColor,
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
            color: containerColor ?? AppColors.secondaryColor,
            borderRadius: radius
          ),
          child: Center(child: Text(text, style: TextStyle(fontSize: 16, color: textColor),)),
        ),
      ),
    );
  }
}