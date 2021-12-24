// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Resultado extends StatefulWidget {
  var valor;

  Resultado(this.valor);

  @override
  _ResultadoState createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  @override
  Widget build(BuildContext context) {
    var resultadoExibido = widget.valor;

    return Scaffold(
      backgroundColor: Color(0xFF61bd86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            resultadoExibido,
            GestureDetector(
              child: Image.asset("images/botao_voltar.png"),
              onTap: () {
                // fecha a interface atual, retornando a pagina anterior
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
