import 'package:auto_depura/core/bloc/global_bloc.dart';
import 'package:auto_depura/core/services/service_locator.dart';
import 'package:auto_depura/ui/pages/dados_do_esgoto/steps/dados_esgoto_step1.dart';
import 'package:auto_depura/ui/pages/dados_do_esgoto/steps/dados_esgoto_step2.dart';
import 'package:auto_depura/ui/pages/widgets/custom_card.dart';
import 'package:auto_depura/ui/theme/app_theme.dart';
import 'package:auto_depura/ui/widgets/app_title.dart';
import 'package:auto_depura/ui/widgets/custom_input.dart';
import 'package:flutter/material.dart';

class DadosDoEsgotoPage extends StatefulWidget {
  const DadosDoEsgotoPage({super.key});

  @override
  State<DadosDoEsgotoPage> createState() => _DadosDoEsgotoPageState();
}

class _DadosDoEsgotoPageState extends State<DadosDoEsgotoPage> {
  int index = 0;
  void onPressed(CustomCardAction action) {
    switch (action) {
      case CustomCardAction.previous:
        if (index >= 1) {
          setState(() => index--);
        } else if (index == 0) {
          Navigator.of(context).pushReplacementNamed("/home");
        }
        break;
      case CustomCardAction.next:
        // se index menor ou igual a total de steps - 1:
        if (index < 1) {
          setState(() => index++);
        }else{
          Navigator.of(context).pushReplacementNamed("/home");
        }

        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 18,
          ),
          children: [
            const AppTitle(),
            const SizedBox(height: 30),
            IndexedStack(
              index: index,
              children: [
                DadosEsgotoStep1(onPressed: onPressed),
                DadosEsgotoStep2(onPressed: onPressed),
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
                                const TextSpan(text: "\n● Tratamento primário: ODe = 0 mg/L;\nTratamento anaeróbio: ODe = 0 mg/L;"),
                                const TextSpan(text: "\n● Tratamento anaeróbio: ODe = 0 mg/L;"),
                                const TextSpan(text: "\n● Lodos ativados, filtros biológicos percoladores e outros sistemas aeróbios similares: ODe = 2 mg/L ou mais;"),
                                const TextSpan(text: "\n● Lagoas facultativas: ODe = 4 a 6 mg/L.\n\n"),
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
                              text:
                                  "Caso não possua o valor, sugere-se:\n\n",
                              children: [
                                TextSpan(
                                  text: "● Esgoto doméstico bruto: DBOe = 300 mg/L\n\n",
                                  style: AppTextStyles.h3.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(
                                  text: "Fonte: Von Sperling (2005)",
                                  style: AppTextStyles.font
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
            )
          ],
        ),
      ),
    );
  }
}
