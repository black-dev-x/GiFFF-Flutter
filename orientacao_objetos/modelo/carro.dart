class Carro {
  int velocidadeMaxima;
  int velocidadeAtual = 0;
  int taxaAceleracao = 5;

  Carro(this.velocidadeMaxima);

  int acelerar() {
    var novaVelocidade = velocidadeAtual + taxaAceleracao;
    velocidadeAtual = novaVelocidade > velocidadeMaxima ? velocidadeMaxima : novaVelocidade;
    return velocidadeAtual;
  }

  int frear() {
    var novaVelocidade = velocidadeAtual - taxaAceleracao;
    velocidadeAtual = novaVelocidade < 0 ? 0 : novaVelocidade;
    return velocidadeAtual;
  }

  bool estaNoLimite() {
    return velocidadeAtual == velocidadeMaxima;
  }

  String toString() {
    return 'O carro esta andando a $velocidadeAtual de $velocidadeMaxima';
  }
}
