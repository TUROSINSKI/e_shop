import 'package:e_shop/core/utils/colors.dart';
import 'package:flutter/material.dart';

final ThemeData lightThemeData = ThemeData(
  fontFamily: 'SFProDisplay',
  textTheme: const TextTheme(
    bodySmall: TextStyle(color: TextColors.mainTextColor),
    bodyMedium: TextStyle(color: TextColors.mainTextColor),
    bodyLarge: TextStyle(color: TextColors.mainTextColor),
  ),
);

final ThemeData darkThemeData = ThemeData(
  fontFamily: 'SFProDisplay', 
);