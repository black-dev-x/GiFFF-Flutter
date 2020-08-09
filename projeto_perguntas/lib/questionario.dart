import 'package:flutter/widgets.dart';
import 'package:projeto_perguntas/questao.dart';
import 'package:projeto_perguntas/resposta.dart';

class Questionario extends StatelessWidget {
  final _perguntas;
  final _responder;
  final int _indice;

  @override
  Questionario(this._perguntas, this._responder, this._indice);
  Widget build(BuildContext context) {
    var respostas = _perguntas[_indice]['respostas'];

    return Column(children: [
      Questao(_perguntas[_indice]['texto']),
      ...respostas.map((texto) => Resposta(texto, _responder)).toList(),
    ]);
  }
}
