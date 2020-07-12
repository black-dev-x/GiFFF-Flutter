class Data {
  int dia;
  int mes;
  int ano;

  Data([this.dia = 1, this.mes = 1, this.ano = 1970]);

  String toString() {
    return "$dia/$mes/$ano";
  }
}

main() {
  var dataAniversario = new Data(17, 6, 1992);
  print(dataAniversario);

  Data dataCompra = Data(12, 7, 2020);
  print(dataCompra);
}
