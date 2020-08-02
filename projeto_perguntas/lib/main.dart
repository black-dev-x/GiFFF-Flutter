import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questao.dart';
import 'package:projeto_perguntas/resposta.dart';

main() {
  runApp(PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _indicePerguntaAtual = 0;

  final perguntas = [
    {
      'texto': 'Qual sua cor favorita',
      'respostas': ['Preto', 'Vermelho', 'Verde', 'Branco'],
    },
    {
      'texto': 'Qual seu animal favorito',
      'respostas': ['Coelho', 'Cobra', 'Elefante', 'Leão'],
    },
    {
      'texto': 'Qual o seu instrutor favorito',
      'respostas': ['Maria', 'João', 'Leo', 'Pedro'],
    },
  ];

  void _responder() {
    setState(() {
      _indicePerguntaAtual++;
      if (_indicePerguntaAtual == perguntas.length) {
        _indicePerguntaAtual = 0;
      }
    });
  }

  Widget build(BuildContext context) {
    var appBar = AppBar(
      title: Text('Teste'),
    );

    var body = Column(children: [
      Questao(perguntas[_indicePerguntaAtual]['texto']),
      Resposta('Resposta 1', _responder),
      Resposta('Resposta 2', _responder),
      Resposta('Resposta 3', _responder),
    ]);

    var home = Scaffold(
      appBar: appBar,
      body: body,
    );

    return MaterialApp(home: home);
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
