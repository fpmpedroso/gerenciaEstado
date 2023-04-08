// contém a padronização do Tema do projeto

import 'package:flutter/material.dart';
import 'package:gerencia_estado/app/core/ui/styles/colors_app.dart';
import 'package:gerencia_estado/app/core/ui/styles/styles_app.dart';
import 'package:gerencia_estado/app/core/ui/styles/texts_app.dart';

class ThemeConfig {
  ThemeConfig._();

  //padronização das bordas
  static final _defaultInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(7),
    borderSide: BorderSide(color: Colors.grey[400]!),
  );

  static final theme = ThemeData(
    scaffoldBackgroundColor: Colors.amber,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.blue,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
    ),
    primaryColor: ColorsApp.instance.primary,
    colorScheme: ColorScheme.fromSeed(
      seedColor: ColorsApp.instance.primary,
      primary: ColorsApp.instance.primary,
      secondary: ColorsApp.instance.secondary,
    ),
    elevatedButtonTheme:
        ElevatedButtonThemeData(style: StylesApp.instance.primaryButton),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: Colors.white,
      filled: true,
      isDense: true,
      contentPadding: const EdgeInsets.all(13),
      border: _defaultInputBorder,
      enabledBorder: _defaultInputBorder,
      focusedBorder: _defaultInputBorder,
      labelStyle: TextsApp.instance.textRegular.copyWith(color: Colors.black),
      errorStyle: TextsApp.instance.textRegular.copyWith(color: Colors.redAccent),
    ),
  );
}
