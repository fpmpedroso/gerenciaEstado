// contém a configuração de temas e outros, para o projeto
// padrão utilizado é o Singleton: permite que a classe seja instanciada uma única vez;

import 'package:flutter/material.dart';
import 'package:gerencia_estado/app/core/ui/styles/colors_app.dart';
import 'package:gerencia_estado/app/core/ui/styles/texts_app.dart';

class StylesApp {
  static StylesApp? _instance;

  StylesApp._();
  static StylesApp get instance {
    _instance ??= StylesApp._();
    return _instance!;
  }

  //configuração padrão dos botões
  ButtonStyle get primaryButton => ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
        backgroundColor: ColorsApp.instance.primary,
        textStyle: TextsApp.instance.textButtonLabel,
      );
}

// adiciona uma extensão no BuildContext para que a cor seja acessada facilmente;
extension StylesAppExtension on BuildContext {
  StylesApp get stylesApp => StylesApp.instance;
}
