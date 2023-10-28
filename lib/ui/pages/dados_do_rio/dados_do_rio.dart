import 'package:auto_depura/ui/pages/dados_do_rio/widgets/custom_card.dart';
import 'package:auto_depura/ui/theme/app_theme.dart';
import 'package:auto_depura/ui/widgets/app_title.dart';
import 'package:auto_depura/ui/widgets/custom_input.dart';
import 'package:flutter/material.dart';

class DadosDoRioPage extends StatefulWidget {
  const DadosDoRioPage({super.key});

  @override
  State<DadosDoRioPage> createState() => _DadosDoRioPageState();
}

class _DadosDoRioPageState extends State<DadosDoRioPage> {
  int index = 0;
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
                CustomCard(
                  title: "Dados do Rio",
                  showPreviousButton: false,
                  onPressed: (action) {
                    setState(() => index = switch (action) {
                          CustomCardAction.previous => index - 1,
                          CustomCardAction.next => index + 1,
                        });
                  },
                  children: [
                    CustomInput(
                      controller: TextEditingController(),
                      title: "K1 (20)c",
                      hintText: "1/d",
                    ),
                    CustomInput(
                      controller: TextEditingController(),
                      title: "K1 (20)c",
                      hintText: "1/d",
                    ),
                    CustomInput(
                      controller: TextEditingController(),
                      title: "K1 (20)c",
                      hintText: "1/d",
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
