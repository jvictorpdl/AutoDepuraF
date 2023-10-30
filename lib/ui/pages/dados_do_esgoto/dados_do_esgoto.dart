import 'package:auto_depura/core/bloc/global_bloc.dart';
import 'package:auto_depura/core/services/service_locator.dart';
import 'package:auto_depura/ui/pages/dados_do_esgoto/steps/dados_esgoto_step1.dart';
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
        if (index >= 1) setState(() => index--);
        break;
      case CustomCardAction.next:
        // se index menor menor ou igual a total de steps - 1:
        if (index <= 1) setState(() => index++);
        break;
      case CustomCardAction.start:
        setState(() => index = 0);
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
                DadosEsgotoStep1(onPressed: onPressed),
              ],
            ),
            const SizedBox(height: 20),
            CustomCard(
              title: "Clique para ajuda em ODr",
              singleButtonText: "Ajuda",
              onPressed: (action) {
                showDialog(
                  context: context,
                  builder: (context) => Dialog(
                    child: Container(
                      padding: const EdgeInsets.all(AppPaddings.defaultPadding),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Title",
                            style: AppTextStyles.h1.copyWith(
                              color: Colors.red,
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
                                  "Não sendo possível coloetar amostras, sugere-se para esgoto doméstico:\n\n",
                              children: [
                                TextSpan(
                                  text: "Esgoto Bruto:\n",
                                  style: AppTextStyles.h3.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const TextSpan(text: "- ODe = 0 mg/L"),
                                const TextSpan(text: "\nEsgoto Tratado:")
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
              title: "Clique para ajuda em DBOr",
              singleButtonText: "Ajuda",
              onPressed: (action) {
                showDialog(
                  context: context,
                  builder: (context) => Dialog(
                    child: Container(
                      padding: const EdgeInsets.all(AppPaddings.defaultPadding),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Title",
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
                                  "Não sendo possível coloetar amostras, sugere-se para esgoto doméstico:\n\n",
                              children: [
                                TextSpan(
                                  text: "Esgoto Bruto:\n",
                                  style: AppTextStyles.h3.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const TextSpan(text: "- ODe = 0 mg/L"),
                                const TextSpan(text: "Esgoto Tratado:")
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
