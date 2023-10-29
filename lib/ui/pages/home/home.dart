import 'package:auto_depura/ui/pages/dados_do_rio/dados_do_rio.dart';
import 'package:auto_depura/ui/pages/home/widgets/expandable_cards.dart';
import 'package:auto_depura/ui/pages/home/widgets/plus_button.dart';
import 'package:auto_depura/ui/theme/app_theme.dart';
import 'package:auto_depura/ui/widgets/app_title.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppPaddings.defaultPadding,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(),
              const AppTitle(),
              const Spacer(flex: 3),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Bem vindo!",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    DateFormat("dd MMMM yyyy")
                        .format(
                          DateTime.now(),
                        )
                        .split(" ")
                        .join(" de "),
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              const Spacer(flex: 4),
              HomeButtons(
                title: "Dados do Rio",
                onPressed: () =>
                    Navigator.of(context).pushNamed("/dados-do-rio"),
              ),
              const Spacer(),
              HomeButtons(
                title: "Dados do Esgoto",
                onPressed: () =>
                    Navigator.of(context).pushNamed("/dados-do-esgoto"),
              ),
              const Spacer(),
              HomeButtons(
                title: "Dados adicionais",
                onPressed: () {},
              ),
              const Spacer(flex: 4),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.accent,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text("Calcular"),
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
