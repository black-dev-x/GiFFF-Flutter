import 'package:flutter/widgets.dart';
import 'package:projeto_perguntas/questao.dart';
import 'package:projeto_perguntas/resposta.dart';

class Questionario extends StatelessWidget {
  final _perguntas;
  final _responder;
  final int _perguntaSelecionada;

  @override
  Questionario(this._perguntas, this._responder, this._perguntaSelecionada);
  Widget build(BuildContext context) {
    var respostas = _perguntas[_perguntaSelecionada]['respostas'];

    return Column(children: [
      Questao(_perguntas[_perguntaSelecionada]['texto']),
      ...respostas.map((resposta) => Resposta(resposta['texto'], () => _responder(resposta['pontuacao']))).toList()
    ]);
  }
}
