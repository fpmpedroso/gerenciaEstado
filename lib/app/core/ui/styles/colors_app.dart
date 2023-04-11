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

  Color get primary => const Color(0xff007D21);
  Color get secondary => const Color(0xffF88B0C);

  //demais cores
  Color get whiteApp => Colors.white;
  Color get plusLightBlue => const Color(0xff40C4FF);
  Color get lightBlue => const Color(0xff03A9F4);

  /*
  - #40C4FF: azul mais claro;
- #03A9F4: azul claro;
- #01579B: azul médio;
- #084994: azul escuro;
- #1C1C1C: cinza escuro;
- #A9A9A9: cinza médio;
- #FF8C00: laranja escuro;
- #FFA500: laranja claro;
- #FFA500: cenoura;
  */
}

// adiciona uma extensão no BuildContext para que a cor seja acessada facilmente: "context.colors.primary";
extension ColorsAppExtension on BuildContext {
  ColorsApp get colors => ColorsApp.instance;
}
