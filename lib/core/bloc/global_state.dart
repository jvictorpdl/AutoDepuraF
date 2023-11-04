part of 'global_bloc.dart';

@freezed
class GlobalState with _$GlobalState {
  const factory GlobalState.initial() = _Initial;
  const factory GlobalState.savingVariableValue() = _SavingVariableValue;
  const factory GlobalState.calculating() = _Calculating;
  const factory GlobalState.calculated(Map<String, dynamic> results) =
      _Calculated;
  const factory GlobalState.generatingChart() = _GeneratingChart;
  const factory GlobalState.chartGenerated() = _ChartGenerated;
}
