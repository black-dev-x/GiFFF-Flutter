import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'questionario.dart';
import 'resultado.dart';

main() {
  runApp(PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _indicePerguntaAtual = 0;
  var _pontuacaoTotal = 0;
  final _perguntas = const [
    {
      'texto': 'Qual sua cor favorita',
      'respostas': [
        {'texto': 'Preto', 'pontuacao': 10},
        {'texto': 'Vermelho', 'pontuacao': 5},
        {'texto': 'Verde', 'pontuacao': 3},
        {'texto': 'Branco', 'pontuacao': 1},
      ],
    },
    {
      'texto': 'Qual seu animal favorito',
      'respostas': [
        {'texto': 'Cobra', 'pontuacao': 10},
        {'texto': 'Coelho', 'pontuacao': 5},
        {'texto': 'Elefante', 'pontuacao': 3},
        {'texto': 'Leão', 'pontuacao': 1},
      ],
    },
    {
      'texto': 'Qual o seu instrutor favorito',
      'respostas': [
        {'texto': 'Leo', 'pontuacao': 10},
        {'texto': 'Maria', 'pontuacao': 5},
        {'texto': 'João', 'pontuacao': 3},
        {'texto': 'Pedro', 'pontuacao': 1},
      ],
    },
  ];

  bool get fimPerguntas {
    return _indicePerguntaAtual >= _perguntas.length;
  }

  void _responder(int pontuacao) {
    if (!fimPerguntas) {
      setState(() {
        _indicePerguntaAtual++;
        _pontuacaoTotal += pontuacao;
        print(_pontuacaoTotal);
      });
    }
  }

  void _reiniciarQuestionario() {
    setState(() {
      _indicePerguntaAtual = 0;
      _pontuacaoTotal = 0;
    });
  }

  Widget build(BuildContext context) {
    var appBar = AppBar(
      title: Text('Teste'),
    );
    var body = fimPerguntas
        ? Resultado(_pontuacaoTotal, _reiniciarQuestionario)
        : Questionario(_perguntas, _responder, _indicePerguntaAtual);

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
