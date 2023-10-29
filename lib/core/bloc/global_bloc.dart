import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

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
}
