class Casa {
  String cor_parede = "Amarelo";
  bool porta_da_sala = false;
  bool porta_do_banheiro = false;

  Casa() {
    imprimir();
  }

  void abrirPortaDaSala() {
    this.porta_da_sala = true;
    print("Abriu a porta");
  }

  void fecharPortaDaSala() {
    this.porta_da_sala = false;
  }

  void pintar(cor) {
    this.cor_parede = cor;
    print("Pintou de $cor");
  }

  void imprimir() {
    print("Porta da sala ${porta_da_sala ? "aberta" : "fechada"}");
    print("Cor da parede: $cor_parede");
    this.cor_parede = "Branco"; // this faz referência a classe
    //this.imprimir(); loop infinito kkkk
  }
}

void main() {
  Casa variavelClasse = Casa();
  variavelClasse.abrirPortaDaSala();
  variavelClasse.pintar("Rosa");
  variavelClasse.imprimir();
}
