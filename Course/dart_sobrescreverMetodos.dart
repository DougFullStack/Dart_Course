// como sobreescrever métodos utilizando super

class Animal {
  String cor = "Branco";
  void movimento() {
    print("Está correndo");
  }
}

class Cachorro extends Animal {
  Cachorro(String cor) : super() {
    this.cor = cor;
  }
}

class Passaro extends Animal {
  String voar;
  Passaro(this.voar);
  @override // funciona sem o override, mas é bom sempre usar para informar o compilador que está referênciando a classe pai
  void movimento() {
    super.movimento(); //estou chamando o método da classe pai
    print(this.voar);
  }
}

void main() {
  Cachorro cachorro = Cachorro("Amarelo");
  Passaro passaro = Passaro("O pássro está voando");
  print(cachorro.cor);
  passaro.movimento();
  print(passaro.cor);
}
