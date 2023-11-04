import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import "dart:math";

part 'global_event.dart';
part 'global_state.dart';
part 'global_bloc.freezed.dart';

class GlobalBloc extends Bloc<GlobalEvent, GlobalState> {
  GlobalBloc() : super(const _Initial());

  // Variables
  double? qr;
  double? odr;
  double? dbor;
  double? odmin;
  double? k120c;
  double? tetak1;
  double? temperatura;
  double? k1t;
  double? k220c;
  double? tetak2;
  double? h;
  double? k2t;
  double? distancia;
  double? velocidade;
  double? particoes;
  double? tempo;
  double? cs;
  double? cslinha;
  double? qe;
  double? ode;
  double? dboe;
  double? dboefl;
  double? e;
  double? altitude;
  //saída
  double? co;
  double? do_;
  double? dbo5;
  double? kt;
  double? tc;
  double? distanciac;
  double? deficitc;
  double? odc;
  double? ct;

  List<double> ctvet = [];
  List<double> lancamentos = [];
  List<int> particoesVet = [];
  List<int> odminVet = [];
  List<int> kmvet = [];




Map<String, dynamic> calcularResultado(Map<String, dynamic> entrada) {
  List<int> particoesVet = [];
  List<double> ctVet = [];
  List<double> odminVet = [];
  List<double> kmvet = [];

  if (entrada.containsKey('k120c')) {
    entrada['k1t'] = entrada['k120c'] *
        pow(entrada['tetak1'], entrada['temperatura'] - 20);
  }

  if (!entrada.containsKey('k2t')) {
    if (entrada.containsKey('k220c')) {
      entrada['k2t'] = entrada['k220c'] *
          pow(entrada['tetak2'], entrada['temperatura'] - 20);
    } else if (entrada.containsKey('h')) {
      if (entrada['h'] < 4 &&
          entrada['h'] >= 0.6 &&
          0.05 <= entrada['velocidade'] &&
          entrada['velocidade'] < 0.8) {
        entrada['k220c'] = 3.73 *
            pow(entrada['velocidade'], 0.5) *
            pow(entrada['h'], -1.5);
      } else if (entrada['h'] < 4 &&
          entrada['h'] >= 0.6 &&
          0.8 <= entrada['velocidade'] &&
          entrada['velocidade'] < 1.5) {
        entrada['k220c'] = 5 *
            pow(entrada['velocidade'], 0.97) *
            pow(entrada['h'], -1.67);
      } else if (entrada['h'] >= 0.1 &&
          entrada['h'] < 0.6 &&
          0.05 <= entrada['velocidade'] &&
          entrada['velocidade'] < 1.5) {
        entrada['k220c'] = 5.3 *
            pow(entrada['velocidade'], 0.67) *
            pow(entrada['h'], -1.85);
      }

      entrada['k2t'] = entrada['k220c'] *
          pow(entrada['tetak2'], entrada['temperatura'] - 20);
    }
  }

  if (!entrada.containsKey('t')) {
    entrada['tempo'] = entrada['distancia'] / (entrada['velocidade'] * 86400);
  }

  if (!entrada.containsKey('cslinha')) {
    entrada['cs'] = 14.652 -
        4.1022 * pow(10, -1) * entrada['temperatura'] +
        7.991 * pow(10, -3) * pow(entrada['temperatura'], 2) -
        7.7774 * pow(10, -5) * pow(entrada['temperatura'], 3);
    entrada['cslinha'] = entrada['cs'] * (1 - entrada['altitude'] / 9450);
  }

  if (entrada.containsKey('e')) {
    if (entrada.containsKey('dboefl')) {
      entrada['dboe'] = entrada['dboefl'];
    }
    entrada['dboefl'] = (1 - entrada['e'] / 100) * entrada['dboe'];
  }

  // DADOS DE SAÍDA
  entrada['co'] = (entrada['qr'] * entrada['odr'] + entrada['qe'] * entrada['ode']) /
      (entrada['qr'] + entrada['qe']);

  if (entrada['lancamentos'].isNotEmpty) {
    double qeXode = 0;
    double qe_qe = 0;

    for (Map<String, dynamic> lancamento in entrada['lancamentos']) {
      qeXode += lancamento['qe'] * lancamento['ode'];
      qe_qe += lancamento['qe'];
    }

    entrada['co'] =
        (entrada['qr'] * entrada['odr'] + entrada['qe'] * entrada['ode'] + qeXode) /
            (entrada['qr'] + entrada['qe'] + qe_qe);
  } else {
    entrada['co'] =
        (entrada['qr'] * entrada['odr'] + entrada['qe'] * entrada['ode']) /
            (entrada['qr'] + entrada['qe']);
  }

  entrada['do'] = entrada['cslinha'] - entrada['co'];

  // Concentração de DBO ultima mistura (Lo)
  if (entrada.containsKey('dboefl')) {
    entrada['dbo5'] =
        (entrada['qr'] * entrada['dbor'] + entrada['qe'] * entrada['dboefl']) /
            (entrada['qr'] + entrada['qe']);
    entrada['kt'] = 1 / (1 - pow(2.72, -5 * double.parse(entrada['k1t'].toStringAsFixed(2))));
    entrada['lo'] = entrada['dbo5'] * entrada['kt'];
  } else {
    entrada['dbo5'] =
        (entrada['qr'] * entrada['dbor'] + entrada['qe'] * entrada['dboe']) /
            (entrada['qr'] + entrada['qe']);
    entrada['kt'] = 1 / (1 - pow(2.72, -5 * double.parse(entrada['k1t'].toStringAsFixed(2))));
    entrada['lo'] = entrada['dbo5'] * entrada['kt'];
  }

  entrada['tc'] = (1 / (entrada['k2t'] - entrada['k1t'])) *
      log((entrada['k2t'] / entrada['k1t']) *
          (1 - ((entrada['do'] * (entrada['k2t'] - entrada['k1t'])) / entrada['lo']) * entrada['k1t']));

  entrada['dc'] = entrada['tc'] * entrada['velocidade'] * 86400;

  // ODC
  entrada['deficitc'] =
      (entrada['k1t'] / entrada['k2t']) * entrada['lo'] * pow(2.7182818285, -entrada['k1t'] * entrada['tc']);
  entrada['odc'] = entrada['cslinha'] - entrada['deficitc'];

  for (int i = 0; i <= entrada['particoes']; i++) {
    particoesVet.add(i);
    odminVet.add(entrada['odmin']);

    double tempop = ((entrada['distancia'] / entrada['particoes']) * i) / (entrada['velocidade'] * 86400);
    if (tempop == 0) {
      entrada['ct'] = entrada['co'];
    } else {
      entrada['ct'] = entrada['cslinha'] -
          (((entrada['k1t'] * entrada['lo']) / (entrada['k2t'] - entrada['k1t'])) *
              (pow(2.7182818285, -entrada['k1t'] * tempop) -
                  pow(2.7182818285, -entrada['k2t'] * tempop)) +
          (entrada['cslinha'] - entrada['co']) * pow(2.7182818285, -entrada['k2t'] * tempop));
    }

    double aux = entrada['distancia'] / entrada['particoes'];
    kmvet.add((aux * i) / 1000);
    ctVet.add(double.parse(entrada['ct'].toStringAsFixed(2)));
    }

    Map<String, dynamic> resultado = {
    'ctVet': ctVet,
    'odminVet': odminVet,
    'particoesVet': particoesVet,
    'kmvet': kmvet,
    };

    return resultado;
  }


}
