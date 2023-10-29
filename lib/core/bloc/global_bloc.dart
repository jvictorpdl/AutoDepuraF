import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'global_event.dart';
part 'global_state.dart';
part 'global_bloc.freezed.dart';

class GlobalBloc extends Bloc<GlobalEvent, GlobalState> {
  GlobalBloc() : super(_Initial()) {
    on<GlobalEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
