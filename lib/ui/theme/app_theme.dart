import 'package:flutter/material.dart';

class AppTheme {}

class AppColors {
  static Color primary = const Color(0xff272944);
  static Color secondary = const Color(0x0f363853);
  static Color accent = const Color(0xff1847ED);
  static Color background = const Color(0xfffefefe);
  static Color highlight = const Color(0x0000000f);
}

class AppTextStyles {
  static TextStyle h1 = TextStyle(
    color: AppColors.accent,
    fontSize: 21,
  );
  static TextStyle h2 = const TextStyle(
    color: Colors.black,
    fontSize: 18,
  );
  static TextStyle h3 = const TextStyle(
    color: Colors.black,
    fontSize: 16,
  );
  static TextStyle font = const TextStyle(
    color: Colors.grey,
    fontSize: 12,
  );
}

class AppPaddings {
  static const double defaultPadding = 28.0;
  static const double small = 16.0;
  static const double smallest = 12.0;
  static const double minimum = 8.0;
}
