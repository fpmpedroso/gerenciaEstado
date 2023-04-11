import 'package:flutter/material.dart';
import 'package:gerencia_estado/app/core/ui/helpers/size_extensions.dart';
import 'package:gerencia_estado/app/core/ui/styles/colors_app.dart';
import 'package:gerencia_estado/app/core/ui/styles/texts_app.dart';
import 'package:gerencia_estado/app/core/ui/widgets/button_widget.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /* padronização do tamanho da imagem (largura 60% da tela, altura 49% largura)
        não deixa ultrapassar o tamanho total da imagem (320 x 157)
    */
    final double widthLogo =
        context.percentWidth(.6) > 320 ? 320 : context.percentWidth(.6);
    final double heightLogo = widthLogo * 0.49;

    return Scaffold(
      body: ColoredBox(
        color: context.colors.whiteApp,
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: widthLogo,
                    height: heightLogo,
                    child: Image.asset(
                      'assets/images/splash_page_logo.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Text(
                      'GERÊNCIA DE ESTADO',
                      style: context.textsApp.textBold.copyWith(
                        fontSize: 20,
                        color: context.colors.primary
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  ButtonWidget(
                    onPressed: (){},
                    label: 'Acessar',
                    color: context.colors.lightBlue,
                    width: context.percentWidth(0.5),
                    height: 35,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );

    /*
    return Scaffold(
      body: ColoredBox(
        color: context.colors.backgroundSplash,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: widthLogo,
                height: heightLogo,
                child: Image.asset(
                  'assets/images/splash_page_logo.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
              child: Column(
                children: [
                  SizedBox(
                    height: context.percentHeight(.7),
                  ),
                  const Text(
                    'GERÊNCIA DE ESTADO',
                    style: TextStyle(

                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  ButtonWidget(
                    onPressed: (){},
                    label: 'Acessar',
                    width: context.percentWidth(0.5),
                    heitght: 35,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
    */
  }
}
