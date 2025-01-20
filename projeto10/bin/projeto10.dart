// "Sistema de Gerenciamento de Tarefas
// Descrição: Crie um sistema simples que permita:
// Adicionar tarefas.
// Marcar tarefas como concluídas.
// Listar todas as tarefas.
// Filtrar tarefas concluídas ou pendentes.
// O que você pratica:
// Listas
// Mapas
// Controle de fluxo e loops"

void main() {
  String acaoUser = 'FiltrarTarefa';
  List<Map<String, dynamic>> tarefas = [
    {
      'ID': 1,
      'Nome Tarefa': 'estudar',
      'Descrição Tarefa': 'estudar mais',
      'Status Tarefa': true,
      'Data Criação': '2025-01-20 17:00:55.897339',
    },
    {
      'ID': 2,
      'Nome Tarefa': 'estudar',
      'Descrição Tarefa': 'estudar mais',
      'Status Tarefa': true,
      'Data Criação': '2025-01-20 17:00:55.897339',
    },
  ];

  switch (acaoUser) {
    case 'AdicionarTarefa':
      Tarefas tarefa1 = Tarefas(
        id: 2,
        nomeTarefa: 'estudar dart',
        descricaoTarefa: 'estudar',
        tarefaConcluida: false,
        dataTarefaCriada: DateTime.now(),
      );
      tarefas.add(tarefa1.adicionarTarefa());
      tarefas.forEach((tarefa) => print('$tarefa\n'));

      break;

    case 'ListarTarefas':
      tarefas.forEach((tarefa) {
        print('$tarefa\n');
      });

      break;

    case 'MarcarTarefa':
      int idEscolha = 2;
      bool novoStatus = true;

      try {
        Map<String, dynamic> tarefa = tarefas.firstWhere(
          (tarefa) => tarefa['ID'] == idEscolha,
        );

        tarefa['Status Tarefa'] = novoStatus;

        print('Tarefa atualizada com sucesso');
      } catch (e) {
        print('Tarefa com o ID $idEscolha não encontrada');
      }

      tarefas.forEach((tarefa) => print('$tarefa\n'));
      break;

    case 'FiltrarTarefa':
      bool filtro = true;
      tarefas
          .where((tarefa) => tarefa['Status Tarefa'] == filtro)
          .forEach((tarefa) => print('$tarefa\n'));

      break;

    case 'sair':
      print('Você saiu da aplicação');
      break;
  }
}

class Tarefas {
  int? id;
  String? nomeTarefa;
  String? descricaoTarefa;
  bool? tarefaConcluida;
  DateTime? dataTarefaCriada;

  Tarefas({
    required this.id,
    required this.nomeTarefa,
    required this.descricaoTarefa,
    required this.tarefaConcluida,
    required this.dataTarefaCriada,
  });

  adicionarTarefa() {
    return <String, dynamic>{
      'ID': id,
      'Nome Tarefa': nomeTarefa,
      'Descrição Tarefa': descricaoTarefa,
      'Status Tarefa': tarefaConcluida,
      'Data Criação': dataTarefaCriada,
    };
  }
}
