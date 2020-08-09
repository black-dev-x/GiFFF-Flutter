import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questao.dart';
import 'package:projeto_perguntas/resposta.dart';

main() {
  runApp(PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _indicePerguntaAtual = 0;

  final _perguntas = const [
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

  bool get fimPerguntas {
    return _indicePerguntaAtual >= _perguntas.length;
  }

  void _responder() {
    if (!fimPerguntas) {
      setState(() {
        _indicePerguntaAtual++;
      });
    }
  }

  Widget build(BuildContext context) {
    var appBar = AppBar(
      title: Text('Teste'),
    );

    List<String> respostas = fimPerguntas ? null : _perguntas[_indicePerguntaAtual]['respostas'];
    var body = fimPerguntas
        ? Center(
            child: Text(
              'Parabéns',
              style: TextStyle(fontSize: 28),
            ),
          )
        : Column(children: [
            Questao(_perguntas[_indicePerguntaAtual]['texto']),
            ...respostas.map((texto) => Resposta(texto, _responder)).toList(),
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
