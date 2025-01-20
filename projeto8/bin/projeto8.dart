//import 'dart:io';

void main(List<String> arguments) {
  //   for (int i = 0; i <= 10; i++) {
  //     print('numero $i');
  //   }

  //   print('Digite um número para calcular o fatorial:');
  //   int numero = int.parse(stdin.readLineSync()!);

  //   int fatorial = 1;
  //   int contador = numero;

  //   while (contador > 0) {
  //     fatorial *= contador;
  //     contador--;
  //   }

  //   print('O fatorial de $numero é $fatorial');

  //   int senhaCorreta = 3456;
  //   int? senhaUser;

  //   do {
  //     print(
  //       'Solicitador de Senha.\n Por favor digita a senha de quatro digitos:',
  //     );
  //     senhaUser = int.parse(stdin.readLineSync()!);
  //   } while (senhaUser != senhaCorreta);

  //   print('Senha correta acesso concedido');

  //   print(areaCirculo(11));

  //   print(somaNumeros(10, 5));

  // List<int> listaInteiros = [2, 10, 40, 44, 56, 3, 2, 42, 11];
  // print(listaInteiros);
  // Iterable<int> pares = listaInteiros.where((numero) => numero % 2 == 0);
  // print(pares);

  // Map<String, double> notasAlunos = {
  //   'Maria': 2.2,
  //   'João': 87,
  //   'Joana': 34,
  //   'Mariza': 45,
  //   'ricardo': 99,
  // };

  // double maiorNota = notasAlunos.values.reduce((a, b) => a > b ? a : b);
  // print(maiorNota);

  // Set<String> frutas = {
  //   'laranja',
  //   'mamão',
  //   'maça',
  //   'banana',
  //   'morango',
  //   'kiwi',
  // };

  // frutas.add('mamao');
  // print(frutas);
}

double areaCirculo(r) {
  const double pi = 3.14;
  double area = pi * (r * r);
  return area;
}

int somaNumeros(int a, int b, [int? c]) {
  if (c != null) {
    int soma = a + b + c;
    return soma;
  } else {
    int soma = a + b;
    return soma;
  }
}
