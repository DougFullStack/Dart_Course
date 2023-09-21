class Config {
  String? cor;
}

class Config2 {
  static String? cor;
}

class Config3 {
  String? cor;
}

void main() {
  Config config = Config();
  config.cor = "Amarelo";
  print(config.cor);
//usando static

  Config2.cor =
      "Rosa"; // Com static consigo acessar metodos e atributos da classe sem a necessidade de instanciar a mesma antes
  print(Config2.cor);
  //class sem final
  Config3 config3 = Config3();
  config3.cor = "dffsdfoo";
  print(config3.cor);
  config3 = Config3();
  print(config3
      .cor); // nota-se que consigo instanciar a classe novamente resetando tudo
  //class com final
  final Config3 config3Final = Config3();
  config3Final.cor = "Preto";
  print(config3Final.cor);
  // config3Final = Config3(); vai gerar um erro se eu tentar instanciar novamente
  // obs o final informa que o objeto está em seu estado final
}
