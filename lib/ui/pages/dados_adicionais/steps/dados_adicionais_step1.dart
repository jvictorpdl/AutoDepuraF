import 'package:auto_depura/core/bloc/global_bloc.dart';
import 'package:auto_depura/core/extensions/double_to_input_text.dart';
import 'package:auto_depura/core/extensions/string_to_double.dart';
import 'package:auto_depura/core/services/service_locator.dart';
import 'package:auto_depura/ui/pages/widgets/custom_card.dart';
import 'package:auto_depura/ui/pages/widgets/or_text_cc.dart';
import 'package:auto_depura/ui/theme/app_theme.dart';
import 'package:auto_depura/ui/widgets/custom_input.dart';
import 'package:flutter/material.dart';

class DadosAdicionaisStep1 extends StatefulWidget {
  final Function(CustomCardAction) onPressed;
  const DadosAdicionaisStep1({super.key, required this.onPressed});

  @override
  State<DadosAdicionaisStep1> createState() => _DadosAdicionaisStep1State();
}

class _DadosAdicionaisStep1State extends State<DadosAdicionaisStep1> {
  late final TextEditingController controller1;
  late final TextEditingController controller2;
  late final TextEditingController controller3;
  late final TextEditingController controller4;
  final GlobalBloc bloc = serviceLocator<GlobalBloc>();

  @override
  void initState() {
    controller1 = TextEditingController(text: bloc.k120c.toText);
    controller2 = TextEditingController(text: bloc.tetak1.toText);
    controller3 = TextEditingController(text: bloc.temperatura.toText);
    controller4 = TextEditingController(text: bloc.k1t.toText);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomCard(
          title: "Dados morfométricos e ambientais",
          onPressed: (action) {
            if ((controller1.text.isNotEmpty && controller2.text.isNotEmpty && controller3.text.isNotEmpty) || controller4.text.isNotEmpty) {
              widget.onPressed(action);
              bloc.k120c = controller1.text.asDouble;
              bloc.tetak1 = controller2.text.asDouble;
              bloc.temperatura = controller3.text.asDouble;
              bloc.k1t = controller4.text.asDouble;
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
              tooltip: "Coeficiente de desoxigenação(20ºC)",
              title: "K1(20ºC)",
              hintText: "d⁻¹",
            ),
            CustomInput(
              controller: controller2,
              tooltip: "θ para K1",
              title: "θ para K1",
              hintText: "ad.",
            ),
            CustomInput(
              controller: controller3,
              tooltip: "Temperatura",
              title: "T",
              hintText: "ºC",
            ),
            const OrText(),
            CustomInput(
              controller: controller4,
              tooltip: "Coeficiente de desoxigenação a uma temperatura(T)",
              title: "K1T",
              hintText: "d⁻¹",
            ),
          ],
        ),
         const SizedBox(height: 20),
            CustomCard(
              title: "Clique para auxílio em θ para K1",
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
                            "Auxílio em θ para K1",
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
                                  "",
                              children: [
                                TextSpan(
                                  text: "Valor usual de θ é de 1,047 (acréscimo de 4,7% em K1 para cada aumento de 1 °C na temperatura da água).\n",
                                  style: AppTextStyles.h3.copyWith(fontWeight: FontWeight.bold,),
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
