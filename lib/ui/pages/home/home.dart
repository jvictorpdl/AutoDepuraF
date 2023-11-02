import 'package:auto_depura/ui/pages/home/widgets/expandable_cards.dart';
import 'package:auto_depura/ui/pages/tables/tables_page.dart';
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
                onPressed: () =>
                    Navigator.of(context).pushNamed("/dados-adicionais"),
              ),
              const Spacer(flex: 4),
              SizedBox(
                width: double.infinity,
                child: Tooltip(
                  message: "",
                  child: ElevatedButton(
                    onPressed: () => showDialog(
                      context: context,
                      builder: (context) => Dialog(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                        child: const CustomTable(
                          tableObjects: [
                            TableContent(
                              header: "Origem",
                              content: [
                                (
                                  "K1 (dia-¹)",
                                  ""
                                ),
                              ],
                            ),
                            TableContent(
                              header: "Esgoto bruto concentrado	",
                              content: [
                                ("0,35 - 0,45", ""),
                              ],
                            ),
                            TableContent(
                              header: "Esgoto bruto de baixa concentração",
                              content: [
                                ("0,30 - 0,40", ""),
                              ],
                            ),
                            TableContent(
                              header: "Efluente primário",
                              content: [
                                ("0,30 - 0,40", ""),
                              ],
                            ),
                            TableContent(
                              header: "Efluente secundário",
                              content: [
                                (
                                  "0,12 - 0,24",
                                  ""
                                ),
                              ],
                            ),
                            TableContent(
                              header: "Curso d’água com águas limpas",
                              content: [
                                (
                                  "0,08 - 0,20",
                                  ""
                                ),
                                
                              ],
                            ),
                          ],
                        ),
                        //-----------------------------------------------------------
                        // Auxílio no coeficiente de reaeração (K1)
                        // child: const CustomTable(
                        //   tableObjects: [
                        //     TableContent(
                        //       header: "Origem",
                        //       content: [
                        //         (
                        //           "K1 (dia  ⁻¹)",
                        //           ""
                        //         ),
                        //       ],
                        //     ),
                        //     TableContent(
                        //       header: "Esgoto bruto concentrado	",
                        //       content: [
                        //         ("0,35 - 0,45", ""),
                        //       ],
                        //     ),
                        //     TableContent(
                        //       header: "Esgoto bruto de baixa concentração",
                        //       content: [
                        //         ("0,30 - 0,40", ""),
                        //       ],
                        //     ),
                        //     TableContent(
                        //       header: "Efluente primário",
                        //       content: [
                        //         ("0,30 - 0,40", ""),
                        //       ],
                        //     ),
                        //     TableContent(
                        //       header: "Efluente secundário",
                        //       content: [
                        //         (
                        //           "0,12 - 0,24",
                        //           ""
                        //         ),
                        //       ],
                        //     ),
                        //     TableContent(
                        //       header: "Curso d’água com águas limpas",
                        //       content: [
                        //         (
                        //           "0,08 - 0,20",
                        //           ""
                        //         ),
                                
                        //       ],
                        //     ),
                        //   ],
                        // ),
                        //-----------------------------------------------------------


                        //--------------------------------------
                        // tabela para  Auxílio na definição do oxigênio dissolvido mínimo (ODmín)
                        // child: const CustomTable(
                        //   tableObjects: [
                        //     TableContent(
                        //       header: "Classe",
                        //       content: [
                        //         (
                        //           "OD mínimo (mg/L)",
                        //           ""
                        //         ),
                        //       ],
                        //     ),
                        //     TableContent(
                        //       header: "Especial	",
                        //       content: [
                        //         ("Não são permitidos lançamentos, mesmo tratados", ""),
                        //       ],
                        //     ),
                        //     TableContent(
                        //       header: "1",
                        //       content: [
                        //         ("6,0", ""),
                        //       ],
                        //     ),
                        //     TableContent(
                        //       header: "2",
                        //       content: [
                        //         ("5,0", ""),
                        //       ],
                        //     ),
                        //     TableContent(
                        //       header: "3",
                        //       content: [
                        //         (
                        //           "4,0",
                        //           ""
                        //         ),
                        //       ],
                        //     ),
                        //     TableContent(
                        //       header: "4",
                        //       content: [
                        //         (
                        //           "2,0",
                        //           ""
                        //         ),
                                
                        //       ],
                        //     ),
                        //   ],
                        // ),



                        //------------------------------------------
                        //tabela para auxilio em DBOr
                        // child: const CustomTable(
                        //   tableObjects: [
                        //     TableContent(
                        //       header: "Condição do rio",
                        //       content: [
                        //         (
                        //           "DBO5 do rio (mg/L)",
                        //           ""
                        //         ),
                        //       ],
                        //     ),
                        //     TableContent(
                        //       header: "Bastante limpo",
                        //       content: [
                        //         ("1", ""),
                        //       ],
                        //     ),
                        //     TableContent(
                        //       header: "Limpo",
                        //       content: [
                        //         ("2", ""),
                        //       ],
                        //     ),
                        //     TableContent(
                        //       header: "Razoalmente limpo",
                        //       content: [
                        //         ("3", ""),
                        //       ],
                        //     ),
                        //     TableContent(
                        //       header: "Duvidoso",
                        //       content: [
                        //         (
                        //           "5",
                        //           ""
                        //         ),
                        //       ],
                        //     ),
                        //     TableContent(
                        //       header: "Ruim",
                        //       content: [
                        //         (
                        //           ">10",
                        //           ""
                        //         ),
                                
                        //       ],
                        //     ),
                        //   ],
                        // ),


                        //------------------------------------------
                        //table para auxilio Eficiencia step final
                        // child: const CustomTable(
                        //   tableObjects: [
                        //     TableContent(
                        //       header: "Tipo de tratamento",
                        //       content: [
                        //         (
                        //           "Sistema de tratamento",
                        //           "Eficiência na remoção de DBO (%)"
                        //         ),
                        //       ],
                        //     ),
                        //     TableContent(
                        //       header: "Primário",
                        //       content: [
                        //         ("Tratamento Primario", "25 - 40"),
                        //       ],
                        //     ),
                        //     TableContent(
                        //       header: "Lagoas de Estabilização",
                        //       content: [
                        //         ("Tratamento Primario", "25 - 40"),
                        //         ("Lagoa facultativa", "75 - 85"),
                        //         (
                        //           "Lagoa anaeróbica-lagoa facultativa",
                        //           "75 - 85"
                        //         ),
                        //         ("Lagoa aerada facultativa	", "75 - 85"),
                        //         (
                        //           "Lagoa aerada de mistura completa-lagoa de decantação",
                        //           "75 - 85"
                        //         ),
                        //         ("Lagoa + lagoa de maturação", "75 - 85"),
                        //         ("Lagoa + lagoa de alta taxa", "75 - 85"),
                        //         ("Lagoa + remoção de algas", "80 - 90"),
                        //       ],
                        //     ),
                        //     TableContent(
                        //       header: "Lodos ativados",
                        //       content: [
                        //         ("Lodos ativados convencional", "85 - 93"),
                        //         ("Aeração prolongada", "93 - 97"),
                        //         (
                        //           "Lodos ativados convencional com remoção biológica de N",
                        //           "85 - 93"
                        //         ),
                        //         (
                        //           "Lodos ativados convencional com remoção biológica de N/P",
                        //           "85 - 93"
                        //         ),
                        //         (
                        //           "Lodos ativados + filtração terciária",
                        //           "95 - 98"
                        //         ),
                        //       ],
                        //     ),
                        //     TableContent(
                        //       header: "Reatores aeróbios com biofilmes",
                        //       content: [
                        //         (
                        //           "Filtro biológico percolador (baixa carga)",
                        //           "85 - 93"
                        //         ),
                        //         (
                        //           "Filtro biológico percolador (alta carga)",
                        //           "80 - 90"
                        //         ),
                        //         ("Biodisco", "85 - 93"),
                        //         ("Biofiltro aerado submerso", "85 - 93"),
                        //         (
                        //           "Biofiltro aerado submerso com remoção biológica de N",
                        //           "85 - 93"
                        //         ),
                        //         (
                        //           "Reator com biofilme + filtração terciária",
                        //           "95 - 98"
                        //         ),
                        //       ],
                        //     ),
                        //     TableContent(
                        //       header: "Reatores anaeróbios",
                        //       content: [
                        //         (
                        //           "Reator anaeróbio de manta de lodo (reator UASB)",
                        //           "60 - 80"
                        //         ),
                        //         ("Fossa séptica-filtro anaeróbio", "70 - 90"),
                        //         (
                        //           "Reator anaeróbio de manta ded lodo + pós tratamento",
                        //           "variável (*)"
                        //         ),
                        //       ],
                        //     ),
                        //     TableContent(
                        //       header: "Disposição controlada no solo",
                        //       content: [
                        //         ("Infiltração lenta no solo	", "(**)"),
                        //         ("Infiltração rápida no solo	", "(**)"),
                        //         ("Infiltração subsuperficial no solo", "(**)"),
                        //         ("Escoamento superficial no solo", "80 - 90"),
                        //         ("Banhados artificiais (wetlands)", "80 - 90"),
                        //         /*
                        //           esta tabela tem de acompanhar a seguinte legenda:
                        //           (*) Reator UASB + pós-tratamento: praticamente todos os processos listados acima podem ser utilizados como pós-tratamento. A eficiência global (reator UASB + pós tratamento) é similar à do processo selecionado para o pós tratamento, caso este estivesse tratando esgotos brutos. Por exemplo, a eficiência do sistema de lodos ativados tratando esgotos brutos é similar à do sistema UASB + lodos ativados.

                        //           (**) Os processos de infiltração no solo não geram efluentes superficiais, já que o mesmo infiltra-se no terreno. Medilções no subsolo, próximas ao local de infiltração, usualmente indicam eficiências superiores a 90%. Das variantes de infiltração, a mais eficiente é a infiltração lenta.
                        //          */
                        //       ],
                        //     ),
                        //   ],
                        // ),
                      ),
                    ),
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
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
