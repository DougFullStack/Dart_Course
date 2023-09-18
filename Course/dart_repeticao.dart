void main() {
  var numero = 100;

  while (numero != 5) {
    print("Executado $numero");
    numero--; //pode se utilizar dois operadores negativos -- ou positivos ++ para somar ou subtrair
  }
  for (var x = 1; x <= 5; x++) {
    print("O X é: $x");
  }

  var lista = ["t", "te", "tes", "Test"];
  for (var list in lista) {
    print("$list");
  }
  do {
    print("$numero");
    numero--;
  } while (numero >= 1);
}
