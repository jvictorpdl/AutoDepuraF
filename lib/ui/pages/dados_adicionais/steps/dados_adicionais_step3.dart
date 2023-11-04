import 'package:auto_depura/core/bloc/global_bloc.dart';
import 'package:auto_depura/core/extensions/double_to_input_text.dart';
import 'package:auto_depura/core/extensions/string_to_double.dart';
import 'package:auto_depura/core/services/service_locator.dart';
import 'package:auto_depura/ui/pages/widgets/custom_card.dart';
import 'package:auto_depura/ui/widgets/custom_input.dart';
import 'package:flutter/material.dart';

class DadosAdicionaisStep3 extends StatefulWidget {
  final Function(CustomCardAction) onPressed;
  const DadosAdicionaisStep3({super.key, required this.onPressed});

  @override
  State<DadosAdicionaisStep3> createState() => _DadosAdicionaisStep3State();
}

class _DadosAdicionaisStep3State extends State<DadosAdicionaisStep3> {
  late final TextEditingController controller1;
  late final TextEditingController controller2;
  late final TextEditingController controller3;

  final GlobalBloc bloc = serviceLocator<GlobalBloc>();

  @override
  void initState() {
    controller1 = TextEditingController(text: bloc.distancia.toText);
    controller2 = TextEditingController(text: bloc.velocidade.toText);
    controller3 = TextEditingController(text: bloc.particoes.toText);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      title: "Dados morfométricos e ambientais",
      onPressed: (action) {
        if (controller1.text.isNotEmpty &&
            controller2.text.isNotEmpty &&
            controller3.text.isNotEmpty) {
          widget.onPressed(action);
          bloc.distancia = controller1.text.asDouble;
          bloc.velocidade = controller2.text.asDouble;
          bloc.particoes = controller3.text.asDouble;
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
          title: "d",
          tooltip: "Distância",
          hintText: "m",
        ),
        CustomInput(
          controller: controller2,
          title: "v",
          tooltip: "Velocidade",
          hintText: "m/s",
        ),
        CustomInput(
          controller: controller3,
          title: "Nº de trechos",
          tooltip: "Quantidade de segmentos",
          hintText: "Quantidade",
        ),
      ],
    );
  }
}
