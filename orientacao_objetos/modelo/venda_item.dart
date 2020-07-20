import 'produto.dart';

class ItemCarrinho {
  int _quantidade;
  Produto _produto;

  Produto get produto {
    return this._produto;
  }

  ItemCarrinho({Produto produto, int quantidade = 1}) {
    this._produto = produto;
    this._quantidade = quantidade;
  }

  double get preco {
    return _produto.precoComDesconto * quantidade;
  }

  int get quantidade {
    return this._quantidade;
  }

  void set quantidade(total) {
    this._quantidade = total;
  }
}
