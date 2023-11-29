import 'package:auto_depura/core/bloc/global_bloc.dart';
import 'package:auto_depura/core/extensions/double_to_input_text.dart';
import 'package:auto_depura/core/extensions/string_to_double.dart';
import 'package:auto_depura/core/services/service_locator.dart';
import 'package:auto_depura/ui/pages/widgets/custom_card.dart';
import 'package:auto_depura/ui/pages/widgets/or_text_cc.dart';
import 'package:auto_depura/ui/theme/app_theme.dart';
import 'package:auto_depura/ui/widgets/custom_input.dart';
import 'package:flutter/material.dart';

class DadosAdicionaisStep2 extends StatefulWidget {
  final Function(CustomCardAction) onPressed;
  const DadosAdicionaisStep2({super.key, required this.onPressed});

  @override
  State<DadosAdicionaisStep2> createState() => _DadosAdicionaisStep2State();
}

class _DadosAdicionaisStep2State extends State<DadosAdicionaisStep2> {
  late final TextEditingController controller1;
  late final TextEditingController controller2;
  late final TextEditingController controller3;
  late final TextEditingController controller4;
  late final TextEditingController controller5;
  late final TextEditingController controller7;
  late final TextEditingController controller8;
  final GlobalBloc bloc = serviceLocator<GlobalBloc>();

  @override
  void initState() {
    controller1 = TextEditingController(text: bloc.velocidade.toText);
    controller2 = TextEditingController(text: bloc.tetak2.toText);
    controller3 = TextEditingController(text: bloc.temperatura.toText);
    controller4 = TextEditingController(text: bloc.h.toText);
    controller5 = TextEditingController(text: bloc.k220c.toText);
    controller7 = TextEditingController(text: bloc.temperatura.toText);
    controller8 = TextEditingController(text: bloc.k2t.toText);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomCard(
          title: "Dados morfométricos e ambientais",
          onPressed: (action) {
            if ((controller1.text.isNotEmpty &&
                    controller2.text.isNotEmpty &&
                    controller3.text.isNotEmpty &&
                    controller4.text.isNotEmpty) ||
                (controller5.text.isNotEmpty &&
                    controller2.text.isNotEmpty &&
                    controller3.text.isNotEmpty) ||
                controller8.text.isNotEmpty) {
              widget.onPressed(action);

              bloc.velocidade = controller1.text.asDouble;
              bloc.tetak2 = controller2.text.asDouble;
              bloc.temperatura = controller3.text.asDouble;
              bloc.h = controller4.text.asDouble;
              bloc.k220c = controller5.text.asDouble;
              bloc.temperatura = controller7.text.asDouble;
              bloc.k2t = controller8.text.asDouble;
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
              title: "v",
              tooltip: "Velocidade",
              hintText: "d⁻¹",
            ),
            CustomInput(
              controller: controller2,
              title: "θ para K2",
              tooltip: "Coeficiente de temperatura",
              hintText: "ad.",
            ),
            CustomInput(
              controller: controller3,
              title: "T",
              tooltip: "Temperatura do líquido",
              hintText: "ºC",
            ),
            CustomInput(
              controller: controller4,
              title: "H",
              tooltip: "Profundidade",
              hintText: "ºC",
            ),
            //
            const OrText(),
            //
            CustomInput(
              controller: controller5,
              title: "K2 (20ºC)",
              tooltip: "Coeficiente de reaeração (20ºC)",
              hintText: "d⁻¹",
            ),
            CustomInput(
              controller: controller2,
              title: "θ para K2",
              tooltip: "Coeficiente de temperatura",
              hintText: "ad.",
            ),
            CustomInput(
              controller: controller3,
              title: "T",
              tooltip: "Temperatura do líquido",
              hintText: "ºC",
            ),
            //
            const OrText(),
            //
            CustomInput(
              controller: controller8,
              tooltip: "Coeficiente de reaeração a temperatura",
              title: "K2T",
              hintText: "d⁻¹",
            ),
          ],
        ),
        const SizedBox(height: 20),
        CustomCard(
          title: "Clique para auxílio em θ para K2",
          singleButtonText: "Ajuda",
          onPressed: (action) {
            showDialog(
              context: context,
              builder: (context) => Dialog(
                child: Container(
                  padding: const EdgeInsets.all(AppPaddings.defaultPadding),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Auxílio em θ para K2",
                        style: AppTextStyles.h1.copyWith(
                          color: Colors.black,
                        ),
                      ),
                      const Divider(
                        thickness: 2,
                        color: Colors.grey,
                      ),
                      RichText(
                        text: TextSpan(
                          style: AppTextStyles.h3,
                          text: "",
                          children: [
                            TextSpan(
                              text: "Valor usual de θ é de 1,024.\n",
                              style: AppTextStyles.h3.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                                text: "Fonte: Von Sperling (2005)\n",
                                style: AppTextStyles.font.copyWith(
                                  fontWeight: FontWeight.bold,
                                )),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
          children: const [],
        ),
      ],
    );
  }
}
