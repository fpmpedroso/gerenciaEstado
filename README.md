# GERÊNCIA DE ESTADO

Projeto para auxiliar nos estudos sobre as diversas formas de gerenciar um estado em Flutter.

## Instalação

1) Download do repositório;
2) No Terminal/Prompt, navegue até o diretório do arquivo;
3) Digite: code .
4) Acesse o arquivo pubspec.yalm e clique em pubget;
5) Flutter run.

## Ferramentas utilizadas

- Fonte: Source Code Pro (assets/fonts/SourceCodePro-VariableFont_wght.ttf);
- Imagem gráfica: syncfusion_flutter_gauges: ^21.1.37;
- Formatador de formulários (máscaras): currency_text_input_formatter: ^2.1.9

## Execução de testes

## Versão

## Autores

- original: Rodrigo Rahman (CTO Academia do Flutter: http://academiadoflutter.com.br);
- adaptação: Fernando Pedroso de Moraes.







## Explicação da criação da fonte

- acesse fonts.google.com;
- o Flutter tem suporte aos formatos *.ttf e *.otf;
- faça o download da fonte desejada (arquivo *.zip);
- na pasta /assets/ crie uma pasta com o nome de fonts;
- disponibilize a fonte baixada na pasta criada;
- no arquivo pubspec.yaml, descomente "fonts:"
- adicione: " - family: nome_da_fonte_google
                    fonts:
                        - assets: assets/fonts/nome_do_arquivo.tff"
- dentro de Text() utilize: "textStyle(
                                fontFamily: nome_da_font_google,
                                colors: cor_desejada,
                                fontWeight: peso_desejado,
                                fontSize: tamanho_desejado,
                            );


## explicação do arquivo de configuração da UI





## didática do passo-a-passo do projeto

- configura-se o arquivo main.dart;
- cria-se a estrutura de pastas;
- cria-se o arquivo gerencia_estado_app.dart;
- configura-se a rota '/' principal: splash_page.dart;
- configura-se as cores padrão do app: colors_app.dart;
- configura-se as fontes padrão do app;
- configura-se os estilos padrão do app: styles_app.dart;
- configura-se os estilos de texto: texts_app.dart;
- configura-se o tema padrão;
- declara-se o tema no arquivo gerencia_estado_app.dart;
- criação do botão padrão: button_widget.dart;