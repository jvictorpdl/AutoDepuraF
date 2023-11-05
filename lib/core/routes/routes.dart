import 'package:auto_depura/ui/pages/dados_do_rio/dados_do_rio.dart';
import 'package:auto_depura/ui/pages/dados_do_esgoto/dados_do_esgoto.dart';
import 'package:auto_depura/ui/pages/dados_adicionais/dados_adicionais.dart';
import 'package:auto_depura/ui/pages/dados_recalcular/dados_recalcular.dart';
import 'package:auto_depura/ui/pages/grafico/grafico.dart';
import 'package:auto_depura/ui/pages/home/home.dart';
import 'package:auto_depura/ui/pages/tables/custom_table.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final Object? args = settings.arguments;
    switch (settings.name) {
      case '/home':
        return MaterialPageRoute(
          builder: (context) => HomePage(),
        );
      case "/dados-do-rio":
        return MaterialPageRoute(
          builder: (context) => const DadosDoRioPage(),
        );
      case "/dados-do-esgoto":
        return MaterialPageRoute(
          builder: (context) => const DadosDoEsgotoPage(),
        );
      case "/dados-adicionais":
        return MaterialPageRoute(
          builder: (context) => const DadosAdicionaisPage(),
        );
      case "/line_chart":
        return MaterialPageRoute(
          builder: (context) => GraficoPage(
            results: const {},
          ),
        );
      case "/recalcular":
        return MaterialPageRoute(
          builder: (context) => const DadosRecalcularPage(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => HomePage(),
        );
    }
  }
}
