class conta {
  double saldo = 0;
  double _saque = 0;
  bool limite = true;
  double get saque {
    // se eu tirar o get, devo acessar como metodo () e não como propriedade.
    if (this.limite == true) {
      //this.limite = false;  posso fazer validações com getter e setter
      return this._saque;
    } else {
      print("Limite diário atingido.");
      return 0;
    }
  }

  set saque(double saque) {
    if (saque <= 500 && saque > 0) {
      // ex de validação.
      this._saque = saque;
    } else {
      print("limite atingido");
    }
  }
}

void main() {
  var teste = conta();
  teste.saque = 100;
  print(teste.saque);
}
