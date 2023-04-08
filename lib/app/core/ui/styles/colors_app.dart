// contém a configuração de cores usada dentro do proejto;
// padrão utilizado é o Singleton: permite que a classe seja instanciada uma única vez;

import 'package:flutter/material.dart';

class ColorsApp {
  static ColorsApp? _instance;

  ColorsApp._();

  static ColorsApp get instance {
    _instance ??= ColorsApp._();
    return _instance!;
  }

  Color get primary => const Color(0XFF007D21);
  Color get secondary => const Color(0XFFF88B0C);
}

// adiciona uma extensão no BuildContext para que a cor seja acessada facilmente: "context.colors.primary";
extension ColorsAppExtension on BuildContext {
  ColorsApp get colors => ColorsApp.instance;
}
