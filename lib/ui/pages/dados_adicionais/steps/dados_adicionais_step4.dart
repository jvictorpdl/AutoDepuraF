import 'package:auto_depura/core/bloc/global_bloc.dart';
import 'package:auto_depura/core/extensions/double_to_input_text.dart';
import 'package:auto_depura/core/extensions/string_to_double.dart';
import 'package:auto_depura/core/services/service_locator.dart';
import 'package:auto_depura/ui/pages/widgets/custom_card.dart';
import 'package:auto_depura/ui/pages/widgets/or_text_cc.dart';
import 'package:auto_depura/ui/widgets/custom_input.dart';
import 'package:flutter/material.dart';

class DadosAdicionaisStep4 extends StatefulWidget {
  final Function(CustomCardAction) onPressed;
  const DadosAdicionaisStep4({super.key, required this.onPressed});

  @override
  State<DadosAdicionaisStep4> createState() => _DadosAdicionaisStep4State();
}

class _DadosAdicionaisStep4State extends State<DadosAdicionaisStep4> {
  late final TextEditingController controller1;
  late final TextEditingController controller2;
  late final TextEditingController controller3;

  final GlobalBloc bloc = serviceLocator<GlobalBloc>();

  @override
  void initState() {
    controller1 = TextEditingController(text: bloc.temperatura.toText);
    controller2 = TextEditingController(text: bloc.altitude.toText);
    controller3 = TextEditingController(text: bloc.cslinha.toText);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      title: "Dados morfométricos e ambientais",
      nextButtonText: "Concluir",
      onPressed: (action) {
        if ((controller1.text.isNotEmpty && controller2.text.isNotEmpty) ||
            controller3.text.isNotEmpty) {
          widget.onPressed(action);
          bloc.temperatura = controller1.text.asDouble;
          bloc.altitude = controller2.text.asDouble;
          bloc.cslinha = controller3.text.asDouble;
        } else {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text("Dados incompletos"),
            backgroundColor: Colors.red,
          ));
        }
      },
      children: [
        CustomInput(
          controller: controller1,
          title: "T",
          tooltip: "Temperatura",
          hintText: "ºC",
        ),
        CustomInput(
          controller: controller2,
          title: "h",
          tooltip: "Altitude",
          hintText: "m",
        ),
        //
        const OrText(),
        //
        CustomInput(
          controller: controller3,
          title: "Cs'",
          tooltip: "Concentração de saturação na altitude (h)",
          hintText: "mg/L",
        ),
      ],
    );
  }
}
