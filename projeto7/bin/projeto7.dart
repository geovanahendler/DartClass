void main(List<String> arguments) {
  int idade = 29;

  if (idade >= 18) {
    print('Você é maior de idade');
  } else {
    print('Você é menor de idade');
  }

  String opcao = 'subtração';

  switch (opcao) {
    case 'soma':
      soma(1, 1);
      break;
    case 'subtração':
      subtracao(6, 4);
      break;
    case 'sair':
      print('Você está saindo!');
      break;
  }
}

void soma(a, b) {
  int soma = a + b;
  String parImper = (soma % 2 == 0) ? 'par' : 'impar';
  print('O valor da soma é $soma');
  print('O numero do resultado é um numero $parImper');
}

void subtracao(a, b) {
  int sub = a - b;
  String parImper = (sub % 2 != 0) ? 'impar' : 'par';
  print('O valor da soma é $sub');
  print('O valor do resultado é um numero $parImper');
}
