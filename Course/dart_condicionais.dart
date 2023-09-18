void main() {
  bool variavel = !true; // posso utilizar negação(!) para atribuir o oposto.

  if (variavel) {
    // verifica se a condição é verdadeira
    print('A variável é: $variavel');
  } else if (!variavel) {
    print("Falso");
  } else {
    print("Error");
  }
}
