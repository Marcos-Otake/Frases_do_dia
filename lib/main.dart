import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final String titulo = "Frases do dia";
  var _frases = [
    "O talento vence jogos, mas só o trabalho em equipe ganha campeonatos <Michael Jordan>",
    "Eu sou parte de uma equipe. Então, quando venço, não sou eu apenas quem vence. De certa forma termino o trabalho de um grupo enorme de pessoas! <Ayrton Senna>",
    "Se quer ir rápido, vá sozinho. Se quer ir longe, vá em grupo <Provérbio africano>",
    "Trabalhar em equipe, nem sempre é acertar o alvo, mas sim se dispor a qualquer momento, ir além de suas expectativas, é ajudar o próximo <Gilberto Blayt>",
    "O melhor pensamento para exemplificar o que é trabalho em equipe: A união faz a força! <Fagner Gouveia>",
    "Qualquer pessoa de sucesso sabe que é uma peça importante, mas sabe que não conseguirá nada sozinho <Bernardinho>",
    "Motivação, parceria e trabalho em equipe <Bernardinho>",
  ];

  var _fraseGerada = "Clique abaixo para gerar uma frase!";

  void _gerarFrase() {
    //aqui é gerado nuemros aleatórios de 0 até o tamanho contido no array
    var numeroSorteado = Random().nextInt(_frases.length);

    //setState atualiza a frase gerada aleatóriamente
    setState(() {
      // a variavel _fraseGerada recebe a nova frase gerada pelo indice array
      _fraseGerada = _frases[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(titulo),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
           width: double.infinity, // largura máxima
           height: double.infinity, //altura máxima
           decoration:
            BoxDecoration(border: Border.all(width: 3, color: Colors.green)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("image/logo.png"),
              Text(
                _fraseGerada,
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 17,
                    fontStyle: FontStyle.italic,
                    color: Colors.black),
              ),
              
              RaisedButton(
                elevation: 12.5,
                color: Colors.green,
                child: Text(
                  "Nova Frase",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                padding: EdgeInsets.all(20),
                onPressed: () {
                  _gerarFrase();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
