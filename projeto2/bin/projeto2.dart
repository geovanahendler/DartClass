void main() {
  Fruta macadamia = Fruta('Macadamia', 20, 'Branco Amarelado');
  Fruta banana = Fruta('Banana', 100, 'Amarela');
  Legume macaxeira = Legume('Macaxeira', 300, 'Marrom', true);
  Fruta limao = Fruta('Limão', 60, 'Verde');

  macadamia.dadosAlimento();
  banana.dadosAlimento();
  macaxeira.dadosAlimento();
  limao.dadosAlimento();

  macaxeira.cozinhar();
  limao.sucoFruta();
}

class Alimento {
  String nome;
  double peso;
  String cor;

  Alimento(this.nome, this.peso, this.cor);

  dadosAlimento() {
    print('Este(a) $nome pesa $peso gramas e é $cor');
  }
}

class Fruta extends Alimento {
  Fruta(super.nome, super.peso, super.cor);

  sucoFruta() {
    print('Você fez um suco de $nome');
  }
}

class Legume extends Alimento {
  bool isPrecisaCozinhar;
  Legume(super.nome, super.peso, super.cor, this.isPrecisaCozinhar);

  void cozinhar() {
    if (isPrecisaCozinhar) {
      print('Pronto! O(a) $nome está cozinhando');
    } else {
      print('Nem precisa cozinhar!');
    }
  }
}
