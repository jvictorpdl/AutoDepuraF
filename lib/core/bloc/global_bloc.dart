import 'package:auto_depura/core/extensions/object_is_null.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import "dart:math";
import 'dart:developer' as dev;

part 'global_event.dart';
part 'global_state.dart';
part 'global_bloc.freezed.dart';

class GlobalBloc extends Bloc<GlobalEvent, GlobalState> {
  GlobalBloc() : super(const _Initial()) {
    on<_Calculate>(_onCalculate);
  }

  // Variables
  final double neperiano = 2.7182818285;
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

  List<double> ctVet = [];
  List<double> lancamentos = [];
  List<double> particoesVet = [];
  List<double> odminVet = [];
  List<double> kmvet = [];

  //checagem se as variaveis estão preenchidas levando em consideração que pode se fazer
  //o calculo a partir de diferentes metodos em alguns steps
  bool get checkAllNumbersFilled =>
      qr.isNotNull &&
      odr.isNotNull &&
      dbor.isNotNull &&
      odmin.isNotNull &&
      qe.isNotNull &&
      ode.isNotNull &&
      (dboe.isNotNull && e.isNotNull || dboefl.isNotNull) &&
      (k120c.isNotNull && tetak1.isNotNull && temperatura.isNotNull ||
          k1t.isNotNull) &&
      (velocidade.isNotNull &&
              tetak2.isNotNull &&
              temperatura.isNotNull &&
              h.isNotNull ||
          (k220c.isNotNull && tetak2.isNotNull && temperatura.isNotNull) ||
          k2t.isNotNull) &&
      distancia.isNotNull &&
      velocidade.isNotNull &&
      particoes.isNotNull &&
      ((temperatura.isNotNull && h.isNotNull) || cslinha.isNotNull);

  void _onCalculate(
    _Calculate event,
    Emitter<GlobalState> emit,
  ) async {
    dev.log("onCalculated chamado");
    emit(const GlobalState.calculating());
    setupTest();
    final results = calcularResultado();
    dev.log("emitindo");
    emit(GlobalState.calculated(results));
  }

  Map<String, dynamic> calcularResultado() {
    ctVet.clear();
    odminVet.clear();
    particoesVet.clear();
    kmvet.clear();

    if (k120c != null) {
      k1t = k120c! * pow(tetak1!, temperatura! - 20);
    }

    if (k2t == null) {
      if (k220c != null) {
        k2t = k220c! * pow(tetak2!, temperatura! - 20);
      } else if (h != null) {
        if (h! < 4 && h! >= 0.6 && 0.05 <= velocidade! && velocidade! < 0.8) {
          //formula O'Connor e Dobbins
          k220c = 3.73 * pow(velocidade!, 0.5) * pow(h!, -1.5);
        } else if (h! < 4 &&
            h! >= 0.6 &&
            0.8 <= velocidade! &&
            velocidade! < 1.5) {
          //formula Churchill et al
          k220c = 5.0 * pow(velocidade!, 0.97) * pow(h!, -1.67);
        } else if (h! >= 0.1 &&
            h! < 0.6 &&
            0.05 <= velocidade! &&
            velocidade! < 1.5) {
          //formula Owens et al
          k220c = 5.3 * pow(velocidade!, 0.67) * pow(h!, -1.85);
        }

        k2t = k220c! * pow(tetak2!, temperatura! - 20);
      }
    }

    tempo ??= distancia! / (velocidade! * 86400);

    if (cslinha == null) {
      cs = 14.652 -
          4.1022 * pow(10, -1) * temperatura! +
          7.991 * pow(10, -3) * pow(temperatura!, 2) -
          7.7774 * pow(10, -5) * pow(temperatura!, 3);
      cslinha = cs! * (1 - altitude! / 9450);
    }

    if (e != null) {
      if (dboefl != null) {
        dboe = dboefl;
      }
      dboefl = (1 - e! / 100) * dboe!;
    }

    // DADOS DE SAÍDA
    double co = (qr! * odr! + qe! * ode!) / (qr! + qe!);

    do_ = cslinha! - co;
    double lo;
    if (dboefl != null) {
      double dbo5 = (qr! * dbor! + qe! * dboefl!) / (qr! + qe!);
      kt = 1 / (1 - pow(neperiano, -5 * k1t!));
      lo = dbo5 * kt!;
    } else {
      double dbo5 = (qr! * dbor! + qe! * dboe!) / (qr! + qe!);
      kt = 1 / (1 - pow(neperiano, -5 * k1t!));
      lo = dbo5 * kt!;
    }

    double tc = (1 / (k2t! - k1t!)) *
        log((k2t! / k1t!) * (1 - ((do_! * (k2t! - k1t!)) / lo) * k1t!));

    double dc = tc * velocidade! * 86400;

    // ODC
    double deficitc = (k1t! / k2t!) * lo * pow(neperiano, -k1t! * tc);
    double odc = cslinha! - deficitc;

    for (double i = 0; i <= particoes!; i++) {
      particoesVet.add(i);
      odminVet.add(odmin!);

      double tempop = ((distancia! / particoes!) * i) / (velocidade! * 86400);
      if (tempop == 0) {
        ctVet.add(co);
      } else {
        double ct = cslinha! -
            (((k1t! * lo) / (k2t! - k1t!)) *
                    (pow(neperiano, -k1t! * tempop) -
                        pow(neperiano, -k2t! * tempop)) +
                (cslinha! - co) * pow(neperiano, -k2t! * tempop));
        ctVet.add(ct);
      }

      double aux = distancia! / particoes!;
      kmvet.add((aux * i) / 1000);
    }

    Map<String, dynamic> resultado = {
      'ctVet': ctVet,
      'odminVet': odminVet,
      'particoesVet': particoesVet,
      'kmvet': kmvet,
      "odc": odc,
      "dc": dc,
    };

    return resultado;
  }

  void setupTest() {
    qr = 0.651;
    odr = 7;
    dbor = 2;
    odmin = 5;
    k120c = 0.38;
    tetak1 = 1.047;
    temperatura = 23;
    k1t = 0.44;
    velocidade = 0.35;
    particoes = 5;
    tempo = 1.65;
    cs = 7.8;
    cslinha = 0;
    cs = 0;
    cslinha = 7.8;
    qe = 0.114;
    ode = 0;
    dboe = 341;
    qr = 0.651;
    odr = 7;
    dbor = 2;
    odmin = 5;
    tetak1 = 1.047;
    temperatura = 23;
    k1t = 0.44;
    tetak2 = 1.024;
    h = 0.80; //profundidade
    k220c = 3.08;
    k2t = 3.31; //3.31
    distancia = 50000;
    velocidade = 0.35;
    particoes = 5;
    tempo = 1.65;
    cslinha = 7.8;
    qe = 0.114;
    ode = 0;
    dboe = 341;
    particoes = 5;
  }
}
