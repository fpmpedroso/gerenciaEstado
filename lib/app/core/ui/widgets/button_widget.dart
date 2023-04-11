// contém o modelo de botão do projeto

import 'package:flutter/material.dart';
import 'package:gerencia_estado/app/core/ui/styles/colors_app.dart';
import 'package:gerencia_estado/app/core/ui/styles/texts_app.dart';

class ButtonWidget extends StatelessWidget {
  final VoidCallback? onPressed;
  final String label;
  final double borderRadius;
  final Color? color;
  final Color? labelColor;
  final Color? borderColor;
  final double? borderWidth;
  final double labelSize;
  final double padding;
  final double width;
  final double height;

  const ButtonWidget({
    Key? key,
    required this.onPressed,
    required this.label,
    this.borderRadius = 5,
    this.color,
    this.labelColor,
    this.borderColor,
    this.borderWidth,
    this.labelSize = 14,
    this.padding = 2,
    this.width = double.infinity,
    this.height = 55,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding),
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          side: BorderSide(
            color: borderColor ?? Colors.transparent, 
            width: borderWidth ?? 0.0,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          backgroundColor: color ?? context.colors.primary
        ),
        child: Text(
          label,
          style: context.textsApp.textButtonLabel.copyWith(
            fontSize: labelSize,
            color: labelColor ?? context.colors.whiteApp,
          ),
        ),
      ),
    );
  }
}
