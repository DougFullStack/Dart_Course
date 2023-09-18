void saudacao(nome, saudacao) {
  // void significa que não retorna nenhum valor
  print("$saudacao $nome, seja bem vindo");
}

void main() {
  saudacao("Joao", "Bom dia");
  var x =
      calcularSalario(1000); // função com return, armazenada em uma variável
  print(x);
  var y = calcularSimples(1000);
  print(y);
}

double calcularSalario(double salario) {
  double total = salario - salario * 0.1;
  return total;
}

double calcularSimples(double salario) =>
    salario - salario * 0.1;// => operador que simplifica e retorna algo
//caso a função tenha diversas linhas, utilizar a função normal.