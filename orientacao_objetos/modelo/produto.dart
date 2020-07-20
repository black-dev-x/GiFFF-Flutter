class Produto {
  int codigo;
  String nome;
  double preco;
  double desconto;

  Produto({this.nome, this.preco, this.desconto, this.codigo});

  double get precoComDesconto {
    return preco * (1 - desconto);
  }
}
