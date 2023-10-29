part of 'global_bloc.dart';

@freezed
class GlobalEvent with _$GlobalEvent {
  const factory GlobalEvent.started() = _Started;
  const factory GlobalEvent.registerVariableValue(num value) =
      _RegisterVariableValue;
  const factory GlobalEvent.calculate() = _Calculate;
  const factory GlobalEvent.generateChartData() = _GenerateChartData;
}
