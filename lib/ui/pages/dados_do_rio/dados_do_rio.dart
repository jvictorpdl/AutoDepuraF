import 'package:auto_depura/ui/pages/widgets/custom_card.dart';
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
                  onPressed: (action) {},
                  children: [
                    CustomInput(
                      controller: TextEditingController(),
                      title: "Qr",
                      hintText: "m³/s",
                    ),
                    CustomInput(
                      controller: TextEditingController(),
                      title: "ODr",
                      hintText: "mg/L",
                    ),
                    CustomInput(
                      controller: TextEditingController(),
                      title: "DBOr",
                      hintText: "mg/L",
                    ),
                    CustomInput(
                      controller: TextEditingController(),
                      title: "ODmin",
                      hintText: "mg/L",
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            CustomCard(
              title: "Clique aqui para ver X",
              singleButtonText: "Ajuda",
              onPressed: (action) {
                showDialog(
                  context: context,
                  builder: (context) => const Dialog(
                    child: Text("Ajuda"),
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
