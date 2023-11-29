import 'package:auto_depura/core/bloc/global_bloc.dart';
import 'package:get_it/get_it.dart';

GetIt serviceLocator = GetIt.I;

class ServiceLocator {
  static void registerServices() {
    serviceLocator.registerLazySingleton<GlobalBloc>(() => GlobalBloc());
  }
}
