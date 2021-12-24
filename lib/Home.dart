// ignore_for_file: file_names, prefer_const_constructors, non_constant_identifier_names

import 'dart:math';

import 'package:cara_ou_coroa_flutter/Resultado.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void _Jogar() {
    /*
    var itens = ["cara", "coroa"];
    var numero = Random().nextInt(itens.length);
    var resultado = itens[numero];
    */

    var validacao = Random().nextBool();
    var caraCoroa;
    if (validacao) {
      caraCoroa = Image.asset("images/moeda_cara.png");
    } else {
      caraCoroa = Image.asset("images/moeda_coroa.png");
    }

    print(validacao);

    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Resultado(caraCoroa)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF61bd86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset("images/logo.png"),
            GestureDetector(
              child: Image.asset("images/botao_jogar.png"),
              onTap: _Jogar,
            )
          ],
        ),
      ),
    );
  }
}

// #70C393