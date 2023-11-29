import 'package:auto_depura/core/bloc/global_bloc.dart';
import 'package:auto_depura/core/extensions/double_to_input_text.dart';
import 'package:auto_depura/core/extensions/string_to_double.dart';
import 'package:auto_depura/core/services/service_locator.dart';
import 'package:auto_depura/ui/pages/widgets/custom_card.dart';
import 'package:auto_depura/ui/theme/app_theme.dart';
import 'package:auto_depura/ui/widgets/custom_input.dart';
import 'package:flutter/material.dart';

class DadosEsgotoStep1 extends StatefulWidget {
  final Function(CustomCardAction) onPressed;
  const DadosEsgotoStep1({super.key, required this.onPressed});

  @override
  State<DadosEsgotoStep1> createState() => _DadosEsgotoStep1State();
}

class _DadosEsgotoStep1State extends State<DadosEsgotoStep1> {
  late final TextEditingController controller1;
  late final TextEditingController controller2;
  late final TextEditingController controller3;
  late final TextEditingController controller4;
  final GlobalBloc bloc = serviceLocator<GlobalBloc>();

  @override
  void initState() {
    controller1 = TextEditingController(text: bloc.qe.toText);
    controller2 = TextEditingController(text: bloc.ode.toText);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomCard(
          title: "Dados do Esgoto",
          onPressed: (action) {
            if (controller1.text.isNotEmpty && controller2.text.isNotEmpty) {
              widget.onPressed(action);
              bloc.qe = controller1.text.asDouble;
              bloc.ode = controller2.text.asDouble;
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
              title: "Qe",
              hintText: "m³/s",
            ),
            CustomInput(
              tooltip: "Oxigênio dissolvido",
              controller: controller2,
              title: "ODe",
              hintText: "mg/L",
            ),
          ],
        ),
        const SizedBox(height: 20),
        CustomCard(
          title: "Clique aqui para auxílio em ODe",
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
                        "Oxigênio dissolvido no esgoto",
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
                          text:
                              "Não sendo possível coletar amostras, sugere-se para esgoto doméstico:\n\n",
                          children: [
                            TextSpan(
                              text: "Esgoto Bruto:\n",
                              style: AppTextStyles.h3.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const TextSpan(text: " ● ODe = 0 mg/L"),
                            TextSpan(
                              text: "Esgoto tratado:\n",
                              style: AppTextStyles.h3.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const TextSpan(
                                text:
                                    "\n● Tratamento primário: ODe = 0 mg/L;\nTratamento anaeróbio: ODe = 0 mg/L;"),
                            const TextSpan(
                                text:
                                    "\n● Tratamento anaeróbio: ODe = 0 mg/L;"),
                            const TextSpan(
                                text:
                                    "\n● Lodos ativados, filtros biológicos percoladores e outros sistemas aeróbios similares: ODe = 2 mg/L ou mais;"),
                            const TextSpan(
                                text:
                                    "\n● Lagoas facultativas: ODe = 4 a 6 mg/L.\n\n"),
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
