import 'package:auto_depura/ui/pages/home/widgets/plus_button.dart';
import 'package:auto_depura/ui/theme/app_theme.dart';
import 'package:flutter/material.dart';

class HomeButtons extends StatelessWidget {
  final String title;
  final Function() onPressed;
  const HomeButtons({
    super.key,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: AppPaddings.smallest,
          horizontal: AppPaddings.minimum,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          border: Border.all(
            width: .2,
            color: const Color(0xfff4f4f4),
          ),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 10),
              spreadRadius: -8,
              blurRadius: 20,
              // blurStyle: BlurStyle.outer,
              color: Colors.black.withOpacity(.2),
            )
          ],
        ),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  title,
                  style: AppTextStyles.h3.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Spacer(),
                PlusButton(
                  onPressed: onPressed,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
