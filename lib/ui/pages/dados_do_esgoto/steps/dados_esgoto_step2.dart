import 'package:auto_depura/core/bloc/global_bloc.dart';
import 'package:auto_depura/core/extensions/double_to_input_text.dart';
import 'package:auto_depura/core/extensions/string_to_double.dart';
import 'package:auto_depura/core/services/service_locator.dart';
import 'package:auto_depura/ui/pages/widgets/custom_card.dart';
import 'package:auto_depura/ui/pages/widgets/or_text_cc.dart';
import 'package:auto_depura/ui/theme/app_theme.dart';
import 'package:auto_depura/ui/widgets/custom_input.dart';
import 'package:flutter/material.dart';

class DadosEsgotoStep2 extends StatefulWidget {
  final Function(CustomCardAction action) onPressed;
  const DadosEsgotoStep2({super.key, required this.onPressed});

  @override
  State<DadosEsgotoStep2> createState() => _DadosEsgotoStep2State();
}

class _DadosEsgotoStep2State extends State<DadosEsgotoStep2> {
  late final TextEditingController controller1;
  late final TextEditingController controller2;
  late final TextEditingController controller3;
  late final TextEditingController controller4;
  final GlobalBloc bloc = serviceLocator<GlobalBloc>();

  @override
  void initState() {
    controller1 = TextEditingController(text: bloc.dboe.toText);
    controller2 = TextEditingController(text: bloc.e.toText);
    controller3 = TextEditingController(text: bloc.dboefl.toText);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomCard(
          title: "Dados do Esgoto",
          nextButtonText: "Concluir",
          onPressed: (action) {
            if ((controller1.text.isNotEmpty && controller2.text.isNotEmpty) ||
                controller3.text.isNotEmpty) {
              widget.onPressed(action);
              bloc.dboe = controller1.text.asDouble;
              bloc.e = controller2.text.asDouble;
              bloc.dboefl = controller3.text.asDouble;
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
              tooltip: "Demanda bioquímica de oxigênio",
              title: "DBOe",
              hintText: "mg/L",
            ),
            CustomInput(
              controller: controller2,
              tooltip: "Eficiência do tratamento na remoção de DBO",
              title: "Eficiência",
              hintText: "%",
            ),
            const OrText(),
            CustomInput(
              controller: controller3,
              tooltip: "DBO do efluente tratado",
              title: "DBOefl",
              hintText: "mg/L",
            ),
          ],
        ),
        const SizedBox(height: 20),
        CustomCard(
          title: "Clique para auxílio em DBOe",
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
                        "Auxílio na definição da demando bioquímica do esgoto (DBOe)",
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
                          text: "Caso não possua o valor, sugere-se:\n\n",
                          children: [
                            TextSpan(
                              text:
                                  "● Esgoto doméstico bruto: DBOe = 300 mg/L\n\n",
                              style: AppTextStyles.h3.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: "Fonte: Von Sperling (2005)",
                              style: AppTextStyles.font,
                            ),
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
