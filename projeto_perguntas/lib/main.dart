import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'questionario.dart';
import 'resultado.dart';

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
    var body = fimPerguntas ? Resultado() : Questionario(_perguntas, _responder, _indicePerguntaAtual);

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
