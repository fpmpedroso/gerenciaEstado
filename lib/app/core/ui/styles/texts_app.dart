// contém a configuração do padrão de texto do projeto
// padrão utilizado é o Singleton: permite que a classe seja instanciada uma única vez;

import 'package:flutter/material.dart';

class TextsApp {
  static TextsApp? _instance;

  TextsApp._();
  static TextsApp get instance {
    _instance ??= TextsApp._();
    return _instance!;
  }

  //fonte padrão
  String get font => 'Source Code Pro';

  //padrão textLight
  TextStyle get textLight => TextStyle(
        fontWeight: FontWeight.w300,
        fontFamily: font,
      );

  //padrão textRegular
  TextStyle get textRegular => TextStyle(
        fontWeight: FontWeight.normal,
        fontFamily: font,
      );

  //padrão textMedium
  TextStyle get textMedium => TextStyle(
        fontWeight: FontWeight.w500,
        fontFamily: font,
      );

  //padrão textSemiBold
  TextStyle get textSemiBold => TextStyle(
        fontWeight: FontWeight.w600,
        fontFamily: font,
      );

  //padrão textBold
  TextStyle get textBold => TextStyle(
        fontWeight: FontWeight.bold,
        fontFamily: font,
      );

  //padrão textExtraBold
  TextStyle get textExtraBold => TextStyle(
        fontWeight: FontWeight.w800,
        fontFamily: font,
      );

  //padrão do texto do botão
  TextStyle get textButtonLabel => textBold.copyWith(fontSize: 14);
}

// adiciona uma extensão no BuildContext para que a cor seja acessada facilmente;
extension TextsAppExtension on BuildContext {
  TextsApp get textsApp => TextsApp.instance;
}
