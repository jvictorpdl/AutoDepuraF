import 'package:auto_depura/core/bloc/global_bloc.dart';
import 'package:auto_depura/core/routes/routes.dart';
import 'package:auto_depura/core/services/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  ServiceLocator.registerServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Auto Depura',
      locale: const Locale("pt-BR"),
      onGenerateRoute: Routes.onGenerateRoute,
      initialRoute: "/home",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        useMaterial3: true,
      ),
    );
  }
}
