import 'dart:io';

void main() {
  print('Olá, tudo bem? Vamos pegar as informações da sua fruta!');

  print('Qual o nome da sua fruta?');
  String? nomeinput = stdin.readLineSync();

  print('Qual o peso da fruta?');
  String? pesoinput = stdin.readLineSync();

  print('Fazem quantos dias desde a colheita?');
  String? diasColheitainput = stdin.readLineSync();

  print('Quantos dias para a fruta ficar madura?');
  String? diasMadurainput = stdin.readLineSync();

  if (diasMadurainput != null &&
      diasColheitainput != null &&
      nomeinput != null &&
      pesoinput != null) {
    try {
      int diasMadura = int.parse(diasMadurainput);
      int diasColheita = int.parse(diasColheitainput);

      String resultado = funcFrutaMadura(
        nome: nomeinput,
        peso: pesoinput,
        diasColheita: diasColheita,
        diasMadura: diasMadura,
      );
      print(resultado);
    } catch (e) {
      print('Erro: Certifique-se de inserir números válidos para os dias.');
    }
  } else {
    print('preencha os campos corretamente');
  }
}

String funcFrutaMadura({
  required String nome,
  required String peso,
  required int diasColheita,
  required int diasMadura,
}) {
  if (diasColheita >= diasMadura) {
    return 'A $nome pesa $peso gramas! Ela foi colhida há $diasColheita dias e precisa de $diasMadura para amadurecer, logo, a $nome está madura!';
  } else {
    return 'A $nome pesa $peso gramas! Ela foi colhida há $diasColheita dias e precisa de $diasMadura para amadurecer, logo, a $nome não está madura!';
  }
}
