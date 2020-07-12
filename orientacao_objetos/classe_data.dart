class Data {
  int dia;
  int mes;
  int ano;

  String toString() {
    return "$dia/$mes/$ano";
  }
}

main() {
  var dataAniversario = new Data();
  dataAniversario.dia = 17;
  dataAniversario.mes = 6;
  dataAniversario.ano = 1992;
  print(dataAniversario);

  Data dataCompra = Data();
  dataCompra.dia = 12;
  dataCompra.mes = 7;
  dataCompra.ano = 2020;
  print(dataCompra);
}
