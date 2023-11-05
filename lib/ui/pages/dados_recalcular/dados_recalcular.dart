import 'package:auto_depura/core/bloc/global_bloc.dart';
import 'package:auto_depura/core/services/service_locator.dart';
import 'package:auto_depura/ui/pages/dados_recalcular/step/dado_recalcular_step1.dart';
import 'package:auto_depura/ui/pages/grafico/grafico.dart';
import 'package:auto_depura/ui/pages/widgets/custom_card.dart';
import 'package:auto_depura/ui/theme/app_theme.dart';
import 'package:auto_depura/ui/widgets/app_title.dart';
import 'package:flutter/material.dart';

class DadosRecalcularPage extends StatefulWidget {
  const DadosRecalcularPage({super.key});

  @override
  State<DadosRecalcularPage> createState() => _DadosRecalcularPageState();
}

class _DadosRecalcularPageState extends State<DadosRecalcularPage> {
  int index = 0;

  final GlobalBloc bloc = serviceLocator<GlobalBloc>();
  void onPressed(CustomCardAction action) {
    //colocar dois botões, um com voltar e o outro com "recalcular"
    switch (action) {
      case CustomCardAction.previous:
       Navigator.of(context).pushNamed("/line_chart");

        break;
      case CustomCardAction.next:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => GraficoPage(
              results: bloc.calcularResultado(),
            ),
          ),
        );

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
                DadosRecalcularStep(onPressed: onPressed),
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
        ),
      ),
    );
  }
}
