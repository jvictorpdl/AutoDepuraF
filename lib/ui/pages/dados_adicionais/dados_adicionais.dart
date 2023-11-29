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
        if (index < 3){ setState(() => index++);}else{
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
                DadosAdicionaisStep1(onPressed: onPressed),
                DadosAdicionaisStep2(onPressed: onPressed),
                DadosAdicionaisStep3(onPressed: onPressed),
                DadosAdicionaisStep4(onPressed: onPressed),
              ],
            ),
           
            
          ],
        ),
      ),
    );
  }
}
