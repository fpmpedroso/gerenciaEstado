// contém o modelo de botão do projeto

import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final VoidCallback? onPressed;
  final String label;
  final double? width;
  final double? heitght;

  const ButtonWidget({
    Key? key, 
    required this.onPressed, 
    required this.label,
    this.width,
    this.heitght = 50
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: heitght,
      child: ElevatedButton(
        onPressed: onPressed, 
        child: Text(label)
      )
    );
  }
}
