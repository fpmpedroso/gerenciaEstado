import 'package:flutter/material.dart';
import 'package:gerencia_estado/app/core/ui/theme/theme_config.dart';
import 'package:gerencia_estado/app/pages/splash/splash_page.dart';

class GerenciaEstadoApp extends StatelessWidget {
  const GerenciaEstadoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gerencidores de Estado',
      theme: ThemeConfig.theme,
      routes: {
        '/': (context) => const SplashPage(),
      },
    );
  }
}
