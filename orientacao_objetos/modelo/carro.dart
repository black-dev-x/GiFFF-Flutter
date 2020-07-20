class Carro {
  final int velocidadeMaxima;
  int _velocidadeAtual = 0;
  static const taxaAceleracao = 5;

  Carro([this.velocidadeMaxima = 200]);

  int get velocidadeAtual {
    return this._velocidadeAtual;
  }

  void set velocidadeAtual(novaVelocidade) {
    this._velocidadeAtual = novaVelocidade;
  }

  int acelerar() {
    var novaVelocidade = _velocidadeAtual + taxaAceleracao;
    _velocidadeAtual = novaVelocidade > velocidadeMaxima ? velocidadeMaxima : novaVelocidade;
    return _velocidadeAtual;
  }

  int frear() {
    var novaVelocidade = _velocidadeAtual - taxaAceleracao;
    _velocidadeAtual = novaVelocidade < 0 ? 0 : novaVelocidade;
    return _velocidadeAtual;
  }

  bool estaNoLimite() {
    return _velocidadeAtual == velocidadeMaxima;
  }

  String toString() {
    return 'O carro esta andando a ${_velocidadeAtual}m/s de ${velocidadeMaxima}m/s';
  }
}
