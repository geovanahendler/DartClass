void main(List<String> arguments) {
  Pessoa geovana = Pessoa(nome: "Geovana", idade: 23, estaAutenticada: true);
  Pessoa giuli = Pessoa(nome: "Giuliana", idade: 20, estaAutenticada: false);
  print(geovana.toMap());
  print(giuli.toMap());
}

class Pessoa {
  String? nome;
  int? idade;
  bool? estaAutenticada;

  Pessoa({this.nome, this.idade, this.estaAutenticada});

  Map<String, dynamic> toMap() {
    return {'nome': nome, 'idade': idade, 'estaAutenticada': estaAutenticada};
  }
}
