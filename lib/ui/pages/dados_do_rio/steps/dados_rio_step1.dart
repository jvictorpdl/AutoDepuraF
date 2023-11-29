import 'package:auto_depura/core/bloc/global_bloc.dart';
import 'package:auto_depura/core/extensions/double_to_input_text.dart';
import 'package:auto_depura/core/extensions/string_to_double.dart';
import 'package:auto_depura/core/services/service_locator.dart';
import 'package:auto_depura/ui/pages/widgets/custom_card.dart';
import 'package:auto_depura/ui/widgets/custom_input.dart';
import 'package:flutter/material.dart';

class DadosRioStep1 extends StatefulWidget {
  final Function(CustomCardAction) onPressed;
  const DadosRioStep1({super.key, required this.onPressed});

  @override
  State<DadosRioStep1> createState() => _DadosRioStep1State();
}

class _DadosRioStep1State extends State<DadosRioStep1> {
  late final TextEditingController controller1;
  late final TextEditingController controller2;
  late final TextEditingController controller3;
  late final TextEditingController controller4;
  final GlobalBloc bloc = serviceLocator<GlobalBloc>();

  @override
  void initState() {
    controller1 = TextEditingController(text: bloc.qr.toText);
    controller2 = TextEditingController(text: bloc.odr.toText);
    controller3 = TextEditingController(text: bloc.dbor.toText);
    controller4 = TextEditingController(text: bloc.odmin.toText);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      title: "Dados do Rio",
      singleButtonText: "Concluir",
      onPressed: (action) {
        if (controller1.text.isNotEmpty &&
            controller2.text.isNotEmpty &&
            controller3.text.isNotEmpty &&
            controller4.text.isNotEmpty) {
          widget.onPressed(action);
          bloc.qr = controller1.text.asDouble;
          bloc.odr = controller2.text.asDouble;
          bloc.dbor = controller3.text.asDouble;
          bloc.odmin = controller4.text.asDouble;
        } else {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text("Dados incompletos"),
            backgroundColor: Colors.red,
          ));
        }
      },
      children: [
        CustomInput(
          tooltip: "Vazão",
          controller: controller1,
          title: "Qr",
          hintText: "m³/s",
        ),
        CustomInput(
          controller: controller2,
          tooltip: "Oxigênio dissolvido",
          title: "ODr",
          hintText: "mg/L",
        ),
        CustomInput(
          controller: controller3,
          title: "DBOr",
          tooltip: "Demanda bioquímica de oxigênio",
          hintText: "mg/L",
        ),
        CustomInput(
          controller: controller4,
          title: "ODmin",
          tooltip: "Oxigênio dissolvido mínimo",
          hintText: "mg/L",
        ),
      ],
    );
  }
}
