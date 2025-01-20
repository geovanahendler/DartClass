void main(List<String> arguments) {
  Carro carro = Carro('Volks', 'Fusca', 1999, 5, 'gasolina');
  Aviao aviao = Aviao('Gol', 'asaDelta', 2023, 200, 'etanol', comercial: true);
  Bicicleta bici = Bicicleta('Azul', '4000', 2029, 1, 'nenhum');

  carro.mover();
  carro.abastecer();
  carro.passageiros();

  aviao.mover();
  aviao.abastecer();
  aviao.passageiros();
  aviao.comercialPassageiros();

  bici.mover();
  bici.abastecer();
  bici.passageiros();
}

class Veiculo {
  String marca;
  String modelo;
  int ano;
  int quantidaLugares;
  String combustivel;

  Veiculo(
    this.marca,
    this.modelo,
    this.ano,
    this.quantidaLugares,
    this.combustivel,
  );
}

class Carro extends Veiculo implements Veiculos {
  Carro(
    super.marca,
    super.modelo,
    super.ano,
    super.quantidadeLugares,
    super.combustivel,
  );

  @override
  mover() {
    print("O carro se movimenta no chão em quatro rodas.");
  }

  @override
  void abastecer() {
    print('Abastecendo o carro com $combustivel');
  }

  @override
  void passageiros() {
    print('O carro pode carregar $quantidaLugares pessoas');
  }
}

class Aviao extends Veiculo implements Veiculos {
  bool? comercial;

  Aviao(
    super.marca,
    super.modelo,
    super.ano,
    super.quantidadeLugares,
    super.combustivel, {
    this.comercial,
  });

  void comercialPassageiros() {
    if (comercial == true) {
      print('Esse é um avião comercial. Temos as classes economica e vip.');
    } else {
      print('Esse é um avião particular');
    }
  }

  @override
  mover() {
    print("O avião se movimenta no ar atraves de suas assas.");
  }

  @override
  void abastecer() {
    print('Abastecendo o avião com $combustivel');
  }

  @override
  void passageiros() {
    print('O avião pode carregar $quantidaLugares pessoas');
  }
}

class Bicicleta extends Veiculo implements Veiculos {
  Bicicleta(
    super.marca,
    super.modelo,
    super.ano,
    super.quantidadeLugares,
    super.combustivel,
  );

  @override
  mover() {
    print('A bicicleta se movimenta em duas rodas. Rode o pedal para andar!');
  }

  @override
  void abastecer() {
    print(
      'A bicicleta não precisa abastecer, apenas use a energia do seu corpo!',
    );
  }

  @override
  void passageiros() {
    print(
      'As biciletas comuns podem carregar apenas uma pessoa. Esse modelo $modelo pode carrregar $quantidaLugares pessoa(s)',
    );
  }
}

abstract class Veiculos {
  void mover();
  void abastecer();
  void passageiros();
}
