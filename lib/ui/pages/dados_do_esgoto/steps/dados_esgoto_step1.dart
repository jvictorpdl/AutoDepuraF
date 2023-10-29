import 'package:auto_depura/ui/pages/widgets/custom_card.dart';
import 'package:auto_depura/ui/widgets/custom_input.dart';
import 'package:flutter/material.dart';

class DadosEsgotoStep1 extends StatelessWidget {
  final Function(CustomCardAction) onPressed;
  const DadosEsgotoStep1({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      title: "Dados do Esgoto",
      onPressed: onPressed,
      children: [
        CustomInput(
          controller: TextEditingController(),
          title: "Qe",
          hintText: "m³/s",
        ),
        CustomInput(
          controller: TextEditingController(),
          title: "ODr",
          hintText: "mg/L",
        ),
        CustomInput(
          controller: TextEditingController(),
          title: "DBOr",
          hintText: "mg/L",
        ),
        CustomInput(
          controller: TextEditingController(),
          title: "ODmin",
          hintText: "mg/L",
        ),
      ],
    );
  }
}
