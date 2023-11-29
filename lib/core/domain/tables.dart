import 'package:auto_depura/ui/pages/tables/custom_table.dart';

class Tables {
  static const List<TableContent>
      auxilioNaDefinicaoDoCoeficienteDeDesoxigenacaoK1 = [
    TableContent(
      header: "Origem",
      content: [
        ["K1 (dia-¹)"],
      ],
    ),
    TableContent(
      header: "Esgoto bruto concentrado	",
      content: [
        ["0,35 - 0,45"],
      ],
    ),
    TableContent(
      header: "Esgoto bruto de baixa concentração",
      content: [
        ["0,30 - 0,40"],
      ],
    ),
    TableContent(
      header: "Efluente primário",
      content: [
        ["0,30 - 0,40"],
      ],
    ),
    TableContent(
      header: "Efluente secundário",
      content: [
        ["0,12 - 0,24"],
      ],
    ),
    TableContent(
      header: "Curso d’água com águas limpas",
      content: [
        ["0,08 - 0,20"],
      ],
    ),
  ];

  static const List<TableContent> auxilioNoCoeficienteDeReaeracao = [
    TableContent(
      header: "Origem",
      content: [
        ["K1 (dia  ⁻¹)"],
      ],
    ),
    TableContent(
      header: "Esgoto bruto concentrado	",
      content: [
        ["0,35 - 0,45"],
      ],
    ),
    TableContent(
      header: "Esgoto bruto de baixa concentração",
      content: [
        ["0,30 - 0,40"],
      ],
    ),
    TableContent(
      header: "Efluente primário",
      content: [
        ["0,30 - 0,40"],
      ],
    ),
    TableContent(
      header: "Efluente secundário",
      content: [
        ["0,12 - 0,24"],
      ],
    ),
    TableContent(
      header: "Curso d’água com águas limpas",
      content: [
        ["0,08 - 0,20"],
      ],
    ),
  ];

  static const List<TableContent>
      auxilioNaDefinicaoDoOxigenioDissolvidoMinimoODmin = [
    TableContent(
      header: "Classe",
      content: [
        ["OD mínimo (mg/L)"],
      ],
    ),
    TableContent(
      header: "Especial	",
      content: [
        ["Não são permitidos lançamentos, mesmo tratados"],
      ],
    ),
    TableContent(
      header: "1",
      content: [
        ["6,0"],
      ],
    ),
    TableContent(
      header: "2",
      content: [
        ["5,0"],
      ],
    ),
    TableContent(
      header: "3",
      content: [
        ["4,0"],
      ],
    ),
    TableContent(
      header: "4",
      content: [
        ["2,0"],
      ],
    ),
  ];

  static const List<TableContent> auxilioEmDBOr = [
    TableContent(
      header: "Condição do rio",
      content: [
        ["DBO5 do rio (mg/L)", "teste", "teste"],
      ],
    ),
    TableContent(
      header: "Bastante limpo",
      content: [
        ["1"],
      ],
    ),
    TableContent(
      header: "Limpo",
      content: [
        ["2"],
      ],
    ),
    TableContent(
      header: "Razoalmente limpo",
      content: [
        ["3"],
      ],
    ),
    TableContent(
      header: "Duvidoso",
      content: [
        ["5"],
      ],
    ),
    TableContent(
      header: "Ruim",
      content: [
        [">10"],
      ],
    ),
  ];

  static const List<TableContent> auxilioEficienciaStepFinal = [
    TableContent(
      header: "Tipo de tratamento",
      content: [
        ["Sistema de tratamento"],
        ["Eficiência na remoção de DBO (%)"],
      ],
    ),
    TableContent(
      header: "Primário",
      content: [
        ["Tratamento Primario"],
        ["25 - 40"],
      ],
    ),
    TableContent(
      header: "Lagoas de Estabilização",
      content: [
        // Coluna
        [
          "Tratamento Primario",
          "Lagoa facultativa",
          "Lagoa anaeróbica-lagoa facultativa",
          "Lagoa aerada facultativa",
          "Lagoa aerada de mistura completa-lagoa de decantação",
          "Lagoa + lagoa de maturação",
          "Lagoa + lagoa de alta taxa",
          "Lagoa + remoção de algas",
        ],
        [
          "25 - 40",
          "75 - 85",
          "75 - 85",
          "75 - 85",
          "75 - 85",
          "75 - 85",
          "75 - 85",
          "80 - 90"
        ],
      ],
    ),
    TableContent(
      header: "Lodos ativados",
      content: [
        [
          "Lodos ativados convencional",
          "Aeração prolongada",
          "Lodos ativados convencional com remoção biológica de N",
          "Lodos ativados convencional com remoção biológica de N/P",
          "Lodos ativados + filtração terciária",
        ],
        [
          "85 - 93",
          "93 - 97",
          "85 - 93",
          "85 - 93",
          "95 - 98",
        ],
      ],
    ),
    TableContent(
      header: "Reatores aeróbios com biofilmes",
      content: [
        [
          "Filtro biológico percolador (baixa carga)",
          "Filtro biológico percolador (alta carga)",
          "Biodisco",
          "Biofiltro aerado submerso",
          "Biofiltro aerado submerso com remoção biológica de N",
          "Reator com biofilme + filtração terciária",
        ],
        [
          "85 - 93",
          "80 - 90",
          "85 - 93",
          "85 - 93",
          "85 - 93",
          "95 - 98",
        ]
      ],
    ),
    TableContent(
      header: "Reatores anaeróbios",
      content: [
        [
          "Reator anaeróbio de manta de lodo (reator UASB)",
          "Fossa séptica-filtro anaeróbio",
          "Reator anaeróbio de manta ded lodo + pós tratamento",
        ],
        [
          "60 - 80",
          "70 - 90",
          "variável (*)",
        ],
      ],
    ),
    TableContent(
      header: "Disposição controlada no solo",
      content: [
        [
          "Infiltração lenta no solo	",
          "Infiltração rápida no solo	",
          "Infiltração subsuperficial no solo",
          "Escoamento superficial no solo",
          "Banhados artificiais (wetlands)",
        ],
        [
          "(**)",
          "(**)",
          "(**)",
          "80 - 90",
          "80 - 90",
        ],
        /*
        esta tabela tem de acompanhar a seguinte legenda:
        (*) Reator UASB + pós-tratamento: praticamente todos os processos listados acima podem ser utilizados como pós-tratamento. A eficiência global (reator UASB + pós tratamento) é similar à do processo selecionado para o pós tratamento, caso este estivesse tratando esgotos brutos. Por exemplo, a eficiência do sistema de lodos ativados tratando esgotos brutos é similar à do sistema UASB + lodos ativados.
        (**) Os processos de infiltração no solo não geram efluentes superficiais, já que o mesmo infiltra-se no terreno. Medilções no subsolo, próximas ao local de infiltração, usualmente indicam eficiências superiores a 90%. Das variantes de infiltração, a mais eficiente é a infiltração lenta.
        */
      ],
    ),
  ];
}
