import 'package:auto_depura/ui/pages/dados_adicionais/steps/dados_adicionais_step1.dart';
import 'package:auto_depura/ui/pages/dados_adicionais/steps/dados_adicionais_step2.dart';
import 'package:auto_depura/ui/pages/dados_adicionais/steps/dados_adicionais_step3.dart';
import 'package:auto_depura/ui/pages/dados_adicionais/steps/dados_adicionais_step4.dart';
import 'package:auto_depura/ui/pages/widgets/custom_card.dart';
import 'package:auto_depura/ui/theme/app_theme.dart';
import 'package:auto_depura/ui/widgets/app_title.dart';
import 'package:flutter/material.dart';

class DadosAdicionaisPage extends StatefulWidget {
  const DadosAdicionaisPage({super.key});

  @override
  State<DadosAdicionaisPage> createState() => _DadosAdicionaisPageState();
}

class _DadosAdicionaisPageState extends State<DadosAdicionaisPage> {
  int index = 0;
  void onPressed(CustomCardAction action) {
    switch (action) {
      case CustomCardAction.previous:
        if (index >= 1){ setState(() => index--);}
        else{Navigator.of(context).pushReplacementNamed("/home");}
        break;
      case CustomCardAction.next:
        // se index menor ou igual a total de steps - 1:
        if (index < 10){ setState(() => index++);}
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
                DadosAdicionaisStep1(onPressed: onPressed),
                DadosAdicionaisStep2(onPressed: onPressed),
                DadosAdicionaisStep3(onPressed: onPressed),
                DadosAdicionaisStep4(onPressed: onPressed),
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
                              text:
                                  "",
                              children: [
                                TextSpan(
                                  text: "Valor usual de θ é de 1,024.\n",
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
            const SizedBox(height: 20),
            CustomCard(
              title: "Clique para auxílio em Nº de trechos",
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
                            "Número de trechos no rio",
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
                                  text: "Número de trechos ao longo da distância para o cálculo do oxigênio dissolvido.\n",
                                  style: AppTextStyles.h3.copyWith(fontWeight: FontWeight.bold,),
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
