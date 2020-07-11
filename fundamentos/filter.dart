main() {
  var notas = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  var notaEhMaiorQueSete = (num nota) => nota > 7;

  var notasFiltradas = filtro(notas, notaEhMaiorQueSete);
  print(notasFiltradas);
}

List<T> filtro<T>(List<T> lista, bool Function(T) funcaoFiltragem) {
  List<T> novaLista = [];
  for (var elemento in lista) {
    if (funcaoFiltragem(elemento)) {
      novaLista.add(elemento);
    }
  }
  return novaLista;
}
