import 'package:auto_depura/ui/pages/widgets/custom_card.dart';
import 'package:auto_depura/ui/widgets/custom_input.dart';
import 'package:flutter/material.dart';

class DadosEsgotoStep2 extends StatefulWidget {
  final Function(
          CustomCardAction action, List<TextEditingController> controllers)
      onPressed;
  const DadosEsgotoStep2({super.key, required this.onPressed});

  @override
  State<DadosEsgotoStep2> createState() => _DadosEsgotoStep2State();
}

class _DadosEsgotoStep2State extends State<DadosEsgotoStep2> {
  final TextEditingController controllerQe = TextEditingController();
  final TextEditingController controllerODr = TextEditingController();
  final TextEditingController controllerDBOr = TextEditingController();
  final TextEditingController controllerODmin = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      title: "Dados do Esgoto",
      onPressed: (action) => widget.onPressed(action, []),
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
