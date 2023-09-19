//parametro opcional sempre fica no final.
void parametroopcional(var nome, {var idade, var sexo}) {
  sexo = sexo ?? "indefinido.";
  // note que ao usar o operador ??, estou informando que o valor receberá "indefdinido"caso o operando da direita seja nulo
  print("Meu nome é $nome.");
  if (idade != null)
    print(
        "Minha idade é $idade anos"); // aqui não usei {}, porém é uma boa prática utilizar.
  print("Sexo $sexo.");
}

void main() {
  parametroopcional(
    "João",
  );
  parametroopcional("João", sexo: "masculino");
  calcularSalario(1000, bonus); // note que eu passei uma função como parâmetro
  calcularSalario(1000, () {
    print("Essa é uma função anônima."); // função anônima (){} como parâmetro.
  });
}

//funcao no parâmetro
void bonus() {
  print("Seu bonus é 20.");
}

void calcularSalario(var salario, Function funcao) {
  print("Seu salário é: $salario");
  funcao();
}
