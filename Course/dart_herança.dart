class Pai {
  String cor = '';
  void dormir() {
    print("Dormir");
  }
}

class Cachorro extends Pai {
  void latir() {
    print("Latir");
  }
}

class Passaro extends Pai {
  void voar() {
    print("voar");
  }
}

void main() {
  Cachorro cachorro = Cachorro();
  cachorro.dormir();
  cachorro.latir();
  Passaro passaro = Passaro();
  passaro.dormir();
  passaro.voar();
  passaro.cor = "Vervelho";
  print(passaro.cor);
}
