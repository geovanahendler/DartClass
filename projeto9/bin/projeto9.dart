void main() {
  Pessoa pessoa = Pessoa(nome: 'Ana', idade: 18);
  print(pessoa.apresentar());

  ContaBancaria contaBancaria = ContaBancaria(
    saldo: 1200,
    nome: 'Luiz',
    idade: 20,
  );

  contaBancaria.depositar(300);
  contaBancaria.sacar(200);
}

class Pessoa {
  String nome;
  int idade;

  Pessoa({required this.nome, required this.idade});

  apresentar() {
    print('Nome $nome e idade $idade');
  }
}

class ContaBancaria extends Pessoa {
  double saldo;

  ContaBancaria({
    required this.saldo,
    required super.nome,
    required super.idade,
  });

  void depositar(double valor) {
    saldo += valor;
    print('saldo bancario $saldo');
  }

  void sacar(double valor) {
    if (valor <= saldo) {
      saldo -= valor;
      print('saldo bancario $saldo');
    } else {
      print('$nome, Saldo insulficiente');
    }
  }
}
