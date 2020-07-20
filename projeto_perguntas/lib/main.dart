import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questao.dart';

main() {
  runApp(PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _indicePerguntaAtual = 0;
  var _listaDePerguntas = ['Qual é a sua cor favorita', 'Qual é o seu animal favorito'];

  void _responder() {
    setState(() {
      _indicePerguntaAtual++;
      if (_indicePerguntaAtual >= _listaDePerguntas.length) _indicePerguntaAtual = 0;
    });
  }

  Widget build(BuildContext context) {
    var appBar = AppBar(
      title: Text('Teste'),
    );

    var body = Column(children: [
      Questao(_listaDePerguntas[_indicePerguntaAtual]),
      RaisedButton(
        child: Text('Resposta 1'),
        onPressed: () => _responder(),
      ),
      RaisedButton(
        child: Text('Resposta 2'),
        onPressed: _responder,
      ),
      RaisedButton(
        child: Text('Resposta 3'),
        onPressed: _responder,
      ),
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
