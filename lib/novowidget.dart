import 'package:flutter/material.dart' show BuildContext, Color, Container, StatelessWidget, Widget;


class NovoWidget extends StatelessWidget {
  Color newColor;
  double largura;
  double altura;

  NovoWidget(this.newColor, this.altura, this.largura, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: largura,
      height: altura,
      color: newColor,
    );
  }
}
