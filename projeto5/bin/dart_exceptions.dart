import './models/account.dart';
import 'controllers/bank_controller.dart';
import './exceptions/bank_controller_exceptions.dart';

void main() {
  // Criando o banco
  BankController bankController = BankController();

  // Adicionando contas
  bankController.addAccount(
      id: "Ricarth",
      account:
          Account(name: "Ricarth Lima", balance: 400, isAuthenticated: false));

  bankController.addAccount(
      id: "Kako",
      account:
          Account(name: "Caio Couto", balance: 600, isAuthenticated: true));

  // Fazendo transferência
  try {
    bool result = bankController.makeTransfer(
        idSender: "Kako", idReceiver: "Ricarth", amount: 700);
    if (result) {
      print("Transação concluída com sucesso!");
    }
    // Observando resultado
    print(result);
  } on SenderIdInvalidException catch (e) {
    print(e);
    print("O ID ${e.idSender} não é um ID válido.");
  } on ReceiverIdInvalidException catch (e) {
    print(e);
    print('O ID ${e.idReceiver} não é um ID válido.');
  } on SenderNotAuthenticatedException catch (e) {
    print(e);
    print("O usuario remetente de ID '${e.idSender}' não está autenticado");
  } on SenderBalanceLowerThanAmountException catch (e) {
    print(e);
    print(
        "O usuario de ${e.idSender} tentou enviar ${e.amount} sendo que na sua conta tem apenas ${e.senderBalance}");
  } on ReceiverNotAuthenticatedException catch (e) {
    print("O ${e.idReceiver} não está autenticado.");
  } on Exception {
    print("Algo deu errado");
  }
}
