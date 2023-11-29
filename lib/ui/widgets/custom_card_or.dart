import 'package:auto_depura/ui/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardOr extends StatelessWidget {
  const CustomCardOr({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        "Ou",
        style: AppTextStyles.h3.copyWith(
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}