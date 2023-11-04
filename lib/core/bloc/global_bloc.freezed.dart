// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'global_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GlobalEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(num value) registerVariableValue,
    required TResult Function() calculate,
    required TResult Function() generateChartData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(num value)? registerVariableValue,
    TResult? Function()? calculate,
    TResult? Function()? generateChartData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(num value)? registerVariableValue,
    TResult Function()? calculate,
    TResult Function()? generateChartData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_RegisterVariableValue value)
        registerVariableValue,
    required TResult Function(_Calculate value) calculate,
    required TResult Function(_GenerateChartData value) generateChartData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_RegisterVariableValue value)? registerVariableValue,
    TResult? Function(_Calculate value)? calculate,
    TResult? Function(_GenerateChartData value)? generateChartData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_RegisterVariableValue value)? registerVariableValue,
    TResult Function(_Calculate value)? calculate,
    TResult Function(_GenerateChartData value)? generateChartData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GlobalEventCopyWith<$Res> {
  factory $GlobalEventCopyWith(
          GlobalEvent value, $Res Function(GlobalEvent) then) =
      _$GlobalEventCopyWithImpl<$Res, GlobalEvent>;
}

/// @nodoc
class _$GlobalEventCopyWithImpl<$Res, $Val extends GlobalEvent>
    implements $GlobalEventCopyWith<$Res> {
  _$GlobalEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$GlobalEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'GlobalEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(num value) registerVariableValue,
    required TResult Function() calculate,
    required TResult Function() generateChartData,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(num value)? registerVariableValue,
    TResult? Function()? calculate,
    TResult? Function()? generateChartData,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(num value)? registerVariableValue,
    TResult Function()? calculate,
    TResult Function()? generateChartData,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_RegisterVariableValue value)
        registerVariableValue,
    required TResult Function(_Calculate value) calculate,
    required TResult Function(_GenerateChartData value) generateChartData,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_RegisterVariableValue value)? registerVariableValue,
    TResult? Function(_Calculate value)? calculate,
    TResult? Function(_GenerateChartData value)? generateChartData,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_RegisterVariableValue value)? registerVariableValue,
    TResult Function(_Calculate value)? calculate,
    TResult Function(_GenerateChartData value)? generateChartData,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements GlobalEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$RegisterVariableValueImplCopyWith<$Res> {
  factory _$$RegisterVariableValueImplCopyWith(
          _$RegisterVariableValueImpl value,
          $Res Function(_$RegisterVariableValueImpl) then) =
      __$$RegisterVariableValueImplCopyWithImpl<$Res>;
  @useResult
  $Res call({num value});
}

/// @nodoc
class __$$RegisterVariableValueImplCopyWithImpl<$Res>
    extends _$GlobalEventCopyWithImpl<$Res, _$RegisterVariableValueImpl>
    implements _$$RegisterVariableValueImplCopyWith<$Res> {
  __$$RegisterVariableValueImplCopyWithImpl(_$RegisterVariableValueImpl _value,
      $Res Function(_$RegisterVariableValueImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$RegisterVariableValueImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc

class _$RegisterVariableValueImpl implements _RegisterVariableValue {
  const _$RegisterVariableValueImpl(this.value);

  @override
  final num value;

  @override
  String toString() {
    return 'GlobalEvent.registerVariableValue(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterVariableValueImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterVariableValueImplCopyWith<_$RegisterVariableValueImpl>
      get copyWith => __$$RegisterVariableValueImplCopyWithImpl<
          _$RegisterVariableValueImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(num value) registerVariableValue,
    required TResult Function() calculate,
    required TResult Function() generateChartData,
  }) {
    return registerVariableValue(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(num value)? registerVariableValue,
    TResult? Function()? calculate,
    TResult? Function()? generateChartData,
  }) {
    return registerVariableValue?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(num value)? registerVariableValue,
    TResult Function()? calculate,
    TResult Function()? generateChartData,
    required TResult orElse(),
  }) {
    if (registerVariableValue != null) {
      return registerVariableValue(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_RegisterVariableValue value)
        registerVariableValue,
    required TResult Function(_Calculate value) calculate,
    required TResult Function(_GenerateChartData value) generateChartData,
  }) {
    return registerVariableValue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_RegisterVariableValue value)? registerVariableValue,
    TResult? Function(_Calculate value)? calculate,
    TResult? Function(_GenerateChartData value)? generateChartData,
  }) {
    return registerVariableValue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_RegisterVariableValue value)? registerVariableValue,
    TResult Function(_Calculate value)? calculate,
    TResult Function(_GenerateChartData value)? generateChartData,
    required TResult orElse(),
  }) {
    if (registerVariableValue != null) {
      return registerVariableValue(this);
    }
    return orElse();
  }
}

abstract class _RegisterVariableValue implements GlobalEvent {
  const factory _RegisterVariableValue(final num value) =
      _$RegisterVariableValueImpl;

  num get value;
  @JsonKey(ignore: true)
  _$$RegisterVariableValueImplCopyWith<_$RegisterVariableValueImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CalculateImplCopyWith<$Res> {
  factory _$$CalculateImplCopyWith(
          _$CalculateImpl value, $Res Function(_$CalculateImpl) then) =
      __$$CalculateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CalculateImplCopyWithImpl<$Res>
    extends _$GlobalEventCopyWithImpl<$Res, _$CalculateImpl>
    implements _$$CalculateImplCopyWith<$Res> {
  __$$CalculateImplCopyWithImpl(
      _$CalculateImpl _value, $Res Function(_$CalculateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CalculateImpl implements _Calculate {
  const _$CalculateImpl();

  @override
  String toString() {
    return 'GlobalEvent.calculate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CalculateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(num value) registerVariableValue,
    required TResult Function() calculate,
    required TResult Function() generateChartData,
  }) {
    return calculate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(num value)? registerVariableValue,
    TResult? Function()? calculate,
    TResult? Function()? generateChartData,
  }) {
    return calculate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(num value)? registerVariableValue,
    TResult Function()? calculate,
    TResult Function()? generateChartData,
    required TResult orElse(),
  }) {
    if (calculate != null) {
      return calculate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_RegisterVariableValue value)
        registerVariableValue,
    required TResult Function(_Calculate value) calculate,
    required TResult Function(_GenerateChartData value) generateChartData,
  }) {
    return calculate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_RegisterVariableValue value)? registerVariableValue,
    TResult? Function(_Calculate value)? calculate,
    TResult? Function(_GenerateChartData value)? generateChartData,
  }) {
    return calculate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_RegisterVariableValue value)? registerVariableValue,
    TResult Function(_Calculate value)? calculate,
    TResult Function(_GenerateChartData value)? generateChartData,
    required TResult orElse(),
  }) {
    if (calculate != null) {
      return calculate(this);
    }
    return orElse();
  }
}

abstract class _Calculate implements GlobalEvent {
  const factory _Calculate() = _$CalculateImpl;
}

/// @nodoc
abstract class _$$GenerateChartDataImplCopyWith<$Res> {
  factory _$$GenerateChartDataImplCopyWith(_$GenerateChartDataImpl value,
          $Res Function(_$GenerateChartDataImpl) then) =
      __$$GenerateChartDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GenerateChartDataImplCopyWithImpl<$Res>
    extends _$GlobalEventCopyWithImpl<$Res, _$GenerateChartDataImpl>
    implements _$$GenerateChartDataImplCopyWith<$Res> {
  __$$GenerateChartDataImplCopyWithImpl(_$GenerateChartDataImpl _value,
      $Res Function(_$GenerateChartDataImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GenerateChartDataImpl implements _GenerateChartData {
  const _$GenerateChartDataImpl();

  @override
  String toString() {
    return 'GlobalEvent.generateChartData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GenerateChartDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(num value) registerVariableValue,
    required TResult Function() calculate,
    required TResult Function() generateChartData,
  }) {
    return generateChartData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(num value)? registerVariableValue,
    TResult? Function()? calculate,
    TResult? Function()? generateChartData,
  }) {
    return generateChartData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(num value)? registerVariableValue,
    TResult Function()? calculate,
    TResult Function()? generateChartData,
    required TResult orElse(),
  }) {
    if (generateChartData != null) {
      return generateChartData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_RegisterVariableValue value)
        registerVariableValue,
    required TResult Function(_Calculate value) calculate,
    required TResult Function(_GenerateChartData value) generateChartData,
  }) {
    return generateChartData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_RegisterVariableValue value)? registerVariableValue,
    TResult? Function(_Calculate value)? calculate,
    TResult? Function(_GenerateChartData value)? generateChartData,
  }) {
    return generateChartData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_RegisterVariableValue value)? registerVariableValue,
    TResult Function(_Calculate value)? calculate,
    TResult Function(_GenerateChartData value)? generateChartData,
    required TResult orElse(),
  }) {
    if (generateChartData != null) {
      return generateChartData(this);
    }
    return orElse();
  }
}

abstract class _GenerateChartData implements GlobalEvent {
  const factory _GenerateChartData() = _$GenerateChartDataImpl;
}

/// @nodoc
mixin _$GlobalState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() savingVariableValue,
    required TResult Function() calculating,
    required TResult Function(Map<String, dynamic> results) calculated,
    required TResult Function() generatingChart,
    required TResult Function() chartGenerated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? savingVariableValue,
    TResult? Function()? calculating,
    TResult? Function(Map<String, dynamic> results)? calculated,
    TResult? Function()? generatingChart,
    TResult? Function()? chartGenerated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? savingVariableValue,
    TResult Function()? calculating,
    TResult Function(Map<String, dynamic> results)? calculated,
    TResult Function()? generatingChart,
    TResult Function()? chartGenerated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SavingVariableValue value) savingVariableValue,
    required TResult Function(_Calculating value) calculating,
    required TResult Function(_Calculated value) calculated,
    required TResult Function(_GeneratingChart value) generatingChart,
    required TResult Function(_ChartGenerated value) chartGenerated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SavingVariableValue value)? savingVariableValue,
    TResult? Function(_Calculating value)? calculating,
    TResult? Function(_Calculated value)? calculated,
    TResult? Function(_GeneratingChart value)? generatingChart,
    TResult? Function(_ChartGenerated value)? chartGenerated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SavingVariableValue value)? savingVariableValue,
    TResult Function(_Calculating value)? calculating,
    TResult Function(_Calculated value)? calculated,
    TResult Function(_GeneratingChart value)? generatingChart,
    TResult Function(_ChartGenerated value)? chartGenerated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GlobalStateCopyWith<$Res> {
  factory $GlobalStateCopyWith(
          GlobalState value, $Res Function(GlobalState) then) =
      _$GlobalStateCopyWithImpl<$Res, GlobalState>;
}

/// @nodoc
class _$GlobalStateCopyWithImpl<$Res, $Val extends GlobalState>
    implements $GlobalStateCopyWith<$Res> {
  _$GlobalStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$GlobalStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'GlobalState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() savingVariableValue,
    required TResult Function() calculating,
    required TResult Function(Map<String, dynamic> results) calculated,
    required TResult Function() generatingChart,
    required TResult Function() chartGenerated,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? savingVariableValue,
    TResult? Function()? calculating,
    TResult? Function(Map<String, dynamic> results)? calculated,
    TResult? Function()? generatingChart,
    TResult? Function()? chartGenerated,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? savingVariableValue,
    TResult Function()? calculating,
    TResult Function(Map<String, dynamic> results)? calculated,
    TResult Function()? generatingChart,
    TResult Function()? chartGenerated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SavingVariableValue value) savingVariableValue,
    required TResult Function(_Calculating value) calculating,
    required TResult Function(_Calculated value) calculated,
    required TResult Function(_GeneratingChart value) generatingChart,
    required TResult Function(_ChartGenerated value) chartGenerated,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SavingVariableValue value)? savingVariableValue,
    TResult? Function(_Calculating value)? calculating,
    TResult? Function(_Calculated value)? calculated,
    TResult? Function(_GeneratingChart value)? generatingChart,
    TResult? Function(_ChartGenerated value)? chartGenerated,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SavingVariableValue value)? savingVariableValue,
    TResult Function(_Calculating value)? calculating,
    TResult Function(_Calculated value)? calculated,
    TResult Function(_GeneratingChart value)? generatingChart,
    TResult Function(_ChartGenerated value)? chartGenerated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements GlobalState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$SavingVariableValueImplCopyWith<$Res> {
  factory _$$SavingVariableValueImplCopyWith(_$SavingVariableValueImpl value,
          $Res Function(_$SavingVariableValueImpl) then) =
      __$$SavingVariableValueImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SavingVariableValueImplCopyWithImpl<$Res>
    extends _$GlobalStateCopyWithImpl<$Res, _$SavingVariableValueImpl>
    implements _$$SavingVariableValueImplCopyWith<$Res> {
  __$$SavingVariableValueImplCopyWithImpl(_$SavingVariableValueImpl _value,
      $Res Function(_$SavingVariableValueImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SavingVariableValueImpl implements _SavingVariableValue {
  const _$SavingVariableValueImpl();

  @override
  String toString() {
    return 'GlobalState.savingVariableValue()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SavingVariableValueImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() savingVariableValue,
    required TResult Function() calculating,
    required TResult Function(Map<String, dynamic> results) calculated,
    required TResult Function() generatingChart,
    required TResult Function() chartGenerated,
  }) {
    return savingVariableValue();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? savingVariableValue,
    TResult? Function()? calculating,
    TResult? Function(Map<String, dynamic> results)? calculated,
    TResult? Function()? generatingChart,
    TResult? Function()? chartGenerated,
  }) {
    return savingVariableValue?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? savingVariableValue,
    TResult Function()? calculating,
    TResult Function(Map<String, dynamic> results)? calculated,
    TResult Function()? generatingChart,
    TResult Function()? chartGenerated,
    required TResult orElse(),
  }) {
    if (savingVariableValue != null) {
      return savingVariableValue();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SavingVariableValue value) savingVariableValue,
    required TResult Function(_Calculating value) calculating,
    required TResult Function(_Calculated value) calculated,
    required TResult Function(_GeneratingChart value) generatingChart,
    required TResult Function(_ChartGenerated value) chartGenerated,
  }) {
    return savingVariableValue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SavingVariableValue value)? savingVariableValue,
    TResult? Function(_Calculating value)? calculating,
    TResult? Function(_Calculated value)? calculated,
    TResult? Function(_GeneratingChart value)? generatingChart,
    TResult? Function(_ChartGenerated value)? chartGenerated,
  }) {
    return savingVariableValue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SavingVariableValue value)? savingVariableValue,
    TResult Function(_Calculating value)? calculating,
    TResult Function(_Calculated value)? calculated,
    TResult Function(_GeneratingChart value)? generatingChart,
    TResult Function(_ChartGenerated value)? chartGenerated,
    required TResult orElse(),
  }) {
    if (savingVariableValue != null) {
      return savingVariableValue(this);
    }
    return orElse();
  }
}

abstract class _SavingVariableValue implements GlobalState {
  const factory _SavingVariableValue() = _$SavingVariableValueImpl;
}

/// @nodoc
abstract class _$$CalculatingImplCopyWith<$Res> {
  factory _$$CalculatingImplCopyWith(
          _$CalculatingImpl value, $Res Function(_$CalculatingImpl) then) =
      __$$CalculatingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CalculatingImplCopyWithImpl<$Res>
    extends _$GlobalStateCopyWithImpl<$Res, _$CalculatingImpl>
    implements _$$CalculatingImplCopyWith<$Res> {
  __$$CalculatingImplCopyWithImpl(
      _$CalculatingImpl _value, $Res Function(_$CalculatingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CalculatingImpl implements _Calculating {
  const _$CalculatingImpl();

  @override
  String toString() {
    return 'GlobalState.calculating()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CalculatingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() savingVariableValue,
    required TResult Function() calculating,
    required TResult Function(Map<String, dynamic> results) calculated,
    required TResult Function() generatingChart,
    required TResult Function() chartGenerated,
  }) {
    return calculating();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? savingVariableValue,
    TResult? Function()? calculating,
    TResult? Function(Map<String, dynamic> results)? calculated,
    TResult? Function()? generatingChart,
    TResult? Function()? chartGenerated,
  }) {
    return calculating?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? savingVariableValue,
    TResult Function()? calculating,
    TResult Function(Map<String, dynamic> results)? calculated,
    TResult Function()? generatingChart,
    TResult Function()? chartGenerated,
    required TResult orElse(),
  }) {
    if (calculating != null) {
      return calculating();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SavingVariableValue value) savingVariableValue,
    required TResult Function(_Calculating value) calculating,
    required TResult Function(_Calculated value) calculated,
    required TResult Function(_GeneratingChart value) generatingChart,
    required TResult Function(_ChartGenerated value) chartGenerated,
  }) {
    return calculating(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SavingVariableValue value)? savingVariableValue,
    TResult? Function(_Calculating value)? calculating,
    TResult? Function(_Calculated value)? calculated,
    TResult? Function(_GeneratingChart value)? generatingChart,
    TResult? Function(_ChartGenerated value)? chartGenerated,
  }) {
    return calculating?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SavingVariableValue value)? savingVariableValue,
    TResult Function(_Calculating value)? calculating,
    TResult Function(_Calculated value)? calculated,
    TResult Function(_GeneratingChart value)? generatingChart,
    TResult Function(_ChartGenerated value)? chartGenerated,
    required TResult orElse(),
  }) {
    if (calculating != null) {
      return calculating(this);
    }
    return orElse();
  }
}

abstract class _Calculating implements GlobalState {
  const factory _Calculating() = _$CalculatingImpl;
}

/// @nodoc
abstract class _$$CalculatedImplCopyWith<$Res> {
  factory _$$CalculatedImplCopyWith(
          _$CalculatedImpl value, $Res Function(_$CalculatedImpl) then) =
      __$$CalculatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, dynamic> results});
}

/// @nodoc
class __$$CalculatedImplCopyWithImpl<$Res>
    extends _$GlobalStateCopyWithImpl<$Res, _$CalculatedImpl>
    implements _$$CalculatedImplCopyWith<$Res> {
  __$$CalculatedImplCopyWithImpl(
      _$CalculatedImpl _value, $Res Function(_$CalculatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_$CalculatedImpl(
      null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$CalculatedImpl implements _Calculated {
  const _$CalculatedImpl(final Map<String, dynamic> results)
      : _results = results;

  final Map<String, dynamic> _results;
  @override
  Map<String, dynamic> get results {
    if (_results is EqualUnmodifiableMapView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_results);
  }

  @override
  String toString() {
    return 'GlobalState.calculated(results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalculatedImpl &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CalculatedImplCopyWith<_$CalculatedImpl> get copyWith =>
      __$$CalculatedImplCopyWithImpl<_$CalculatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() savingVariableValue,
    required TResult Function() calculating,
    required TResult Function(Map<String, dynamic> results) calculated,
    required TResult Function() generatingChart,
    required TResult Function() chartGenerated,
  }) {
    return calculated(results);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? savingVariableValue,
    TResult? Function()? calculating,
    TResult? Function(Map<String, dynamic> results)? calculated,
    TResult? Function()? generatingChart,
    TResult? Function()? chartGenerated,
  }) {
    return calculated?.call(results);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? savingVariableValue,
    TResult Function()? calculating,
    TResult Function(Map<String, dynamic> results)? calculated,
    TResult Function()? generatingChart,
    TResult Function()? chartGenerated,
    required TResult orElse(),
  }) {
    if (calculated != null) {
      return calculated(results);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SavingVariableValue value) savingVariableValue,
    required TResult Function(_Calculating value) calculating,
    required TResult Function(_Calculated value) calculated,
    required TResult Function(_GeneratingChart value) generatingChart,
    required TResult Function(_ChartGenerated value) chartGenerated,
  }) {
    return calculated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SavingVariableValue value)? savingVariableValue,
    TResult? Function(_Calculating value)? calculating,
    TResult? Function(_Calculated value)? calculated,
    TResult? Function(_GeneratingChart value)? generatingChart,
    TResult? Function(_ChartGenerated value)? chartGenerated,
  }) {
    return calculated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SavingVariableValue value)? savingVariableValue,
    TResult Function(_Calculating value)? calculating,
    TResult Function(_Calculated value)? calculated,
    TResult Function(_GeneratingChart value)? generatingChart,
    TResult Function(_ChartGenerated value)? chartGenerated,
    required TResult orElse(),
  }) {
    if (calculated != null) {
      return calculated(this);
    }
    return orElse();
  }
}

abstract class _Calculated implements GlobalState {
  const factory _Calculated(final Map<String, dynamic> results) =
      _$CalculatedImpl;

  Map<String, dynamic> get results;
  @JsonKey(ignore: true)
  _$$CalculatedImplCopyWith<_$CalculatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GeneratingChartImplCopyWith<$Res> {
  factory _$$GeneratingChartImplCopyWith(_$GeneratingChartImpl value,
          $Res Function(_$GeneratingChartImpl) then) =
      __$$GeneratingChartImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GeneratingChartImplCopyWithImpl<$Res>
    extends _$GlobalStateCopyWithImpl<$Res, _$GeneratingChartImpl>
    implements _$$GeneratingChartImplCopyWith<$Res> {
  __$$GeneratingChartImplCopyWithImpl(
      _$GeneratingChartImpl _value, $Res Function(_$GeneratingChartImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GeneratingChartImpl implements _GeneratingChart {
  const _$GeneratingChartImpl();

  @override
  String toString() {
    return 'GlobalState.generatingChart()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GeneratingChartImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() savingVariableValue,
    required TResult Function() calculating,
    required TResult Function(Map<String, dynamic> results) calculated,
    required TResult Function() generatingChart,
    required TResult Function() chartGenerated,
  }) {
    return generatingChart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? savingVariableValue,
    TResult? Function()? calculating,
    TResult? Function(Map<String, dynamic> results)? calculated,
    TResult? Function()? generatingChart,
    TResult? Function()? chartGenerated,
  }) {
    return generatingChart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? savingVariableValue,
    TResult Function()? calculating,
    TResult Function(Map<String, dynamic> results)? calculated,
    TResult Function()? generatingChart,
    TResult Function()? chartGenerated,
    required TResult orElse(),
  }) {
    if (generatingChart != null) {
      return generatingChart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SavingVariableValue value) savingVariableValue,
    required TResult Function(_Calculating value) calculating,
    required TResult Function(_Calculated value) calculated,
    required TResult Function(_GeneratingChart value) generatingChart,
    required TResult Function(_ChartGenerated value) chartGenerated,
  }) {
    return generatingChart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SavingVariableValue value)? savingVariableValue,
    TResult? Function(_Calculating value)? calculating,
    TResult? Function(_Calculated value)? calculated,
    TResult? Function(_GeneratingChart value)? generatingChart,
    TResult? Function(_ChartGenerated value)? chartGenerated,
  }) {
    return generatingChart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SavingVariableValue value)? savingVariableValue,
    TResult Function(_Calculating value)? calculating,
    TResult Function(_Calculated value)? calculated,
    TResult Function(_GeneratingChart value)? generatingChart,
    TResult Function(_ChartGenerated value)? chartGenerated,
    required TResult orElse(),
  }) {
    if (generatingChart != null) {
      return generatingChart(this);
    }
    return orElse();
  }
}

abstract class _GeneratingChart implements GlobalState {
  const factory _GeneratingChart() = _$GeneratingChartImpl;
}

/// @nodoc
abstract class _$$ChartGeneratedImplCopyWith<$Res> {
  factory _$$ChartGeneratedImplCopyWith(_$ChartGeneratedImpl value,
          $Res Function(_$ChartGeneratedImpl) then) =
      __$$ChartGeneratedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChartGeneratedImplCopyWithImpl<$Res>
    extends _$GlobalStateCopyWithImpl<$Res, _$ChartGeneratedImpl>
    implements _$$ChartGeneratedImplCopyWith<$Res> {
  __$$ChartGeneratedImplCopyWithImpl(
      _$ChartGeneratedImpl _value, $Res Function(_$ChartGeneratedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChartGeneratedImpl implements _ChartGenerated {
  const _$ChartGeneratedImpl();

  @override
  String toString() {
    return 'GlobalState.chartGenerated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChartGeneratedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() savingVariableValue,
    required TResult Function() calculating,
    required TResult Function(Map<String, dynamic> results) calculated,
    required TResult Function() generatingChart,
    required TResult Function() chartGenerated,
  }) {
    return chartGenerated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? savingVariableValue,
    TResult? Function()? calculating,
    TResult? Function(Map<String, dynamic> results)? calculated,
    TResult? Function()? generatingChart,
    TResult? Function()? chartGenerated,
  }) {
    return chartGenerated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? savingVariableValue,
    TResult Function()? calculating,
    TResult Function(Map<String, dynamic> results)? calculated,
    TResult Function()? generatingChart,
    TResult Function()? chartGenerated,
    required TResult orElse(),
  }) {
    if (chartGenerated != null) {
      return chartGenerated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SavingVariableValue value) savingVariableValue,
    required TResult Function(_Calculating value) calculating,
    required TResult Function(_Calculated value) calculated,
    required TResult Function(_GeneratingChart value) generatingChart,
    required TResult Function(_ChartGenerated value) chartGenerated,
  }) {
    return chartGenerated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SavingVariableValue value)? savingVariableValue,
    TResult? Function(_Calculating value)? calculating,
    TResult? Function(_Calculated value)? calculated,
    TResult? Function(_GeneratingChart value)? generatingChart,
    TResult? Function(_ChartGenerated value)? chartGenerated,
  }) {
    return chartGenerated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SavingVariableValue value)? savingVariableValue,
    TResult Function(_Calculating value)? calculating,
    TResult Function(_Calculated value)? calculated,
    TResult Function(_GeneratingChart value)? generatingChart,
    TResult Function(_ChartGenerated value)? chartGenerated,
    required TResult orElse(),
  }) {
    if (chartGenerated != null) {
      return chartGenerated(this);
    }
    return orElse();
  }
}

abstract class _ChartGenerated implements GlobalState {
  const factory _ChartGenerated() = _$ChartGeneratedImpl;
}
