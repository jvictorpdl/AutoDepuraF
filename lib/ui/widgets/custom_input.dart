import 'package:auto_depura/ui/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomInput extends StatefulWidget {
  final String title;
  final String hintText;
  final TextEditingController controller;
  const CustomInput(
      {super.key,
      required this.title,
      required this.hintText,
      required this.controller});

  @override
  State<CustomInput> createState() => _CustomInputState();
}

class _CustomInputState extends State<CustomInput> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: AppTextStyles.h3.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        Row(
          children: [
            Expanded(
              child: TextFormField(
                cursorColor: Colors.grey,
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
                inputFormatters: [
                  LengthLimitingTextInputFormatter(
                      7), // Limita o número de caracteres
                  FilteringTextInputFormatter.allow(
                      RegExp(r'^\d+\.?\d*')), // Permite números decimais
                ],
                maxLength: 7,
                decoration: InputDecoration(
                  labelText: widget.hintText,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 6,
                  ),
                  hintText: widget.hintText,
                  hintStyle: AppTextStyles.h3.copyWith(
                    fontWeight: FontWeight.w500,
                    color: const Color(0xffc1c7de),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xffc1c7de),
                    ),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xffc1c7de),
                    ),
                  ),
                ),
                controller: widget.controller,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
