class SenderIdInvalidException implements Exception {
  static const report = "SenderIdInvalidException";
  String idSender;
  SenderIdInvalidException({required this.idSender});

  @override
  String toString() {
    return "$report\nID Sender: $idSender";
  }
}

class ReceiverIdInvalidException implements Exception {
  static const String report = "ReceiverIdInvalidException";
  String idReceiver;
  ReceiverIdInvalidException({required this.idReceiver});

  @override
  String toString() {
    return "$report\nID Sender: $idReceiver";
  }
}

class SenderNotAuthenticatedException implements Exception {
  static const String report = "SenderNotAuthenticatedException";
  String idSender;
  SenderNotAuthenticatedException({required this.idSender});

  @override
  String toString() {
    return "$report\nID Sender: $idSender";
  }
}

class SenderBalanceLowerThanAmountException implements Exception {
  static const String report = "SenderBalanceLowerThanAmountException";
  String idSender;
  double senderBalance;
  double amount;

  SenderBalanceLowerThanAmountException(
      {required this.idSender,
      required this.senderBalance,
      required this.amount});

  @override
  String toString() {
    return "$report\nID Sender: $idSender\nSender Balance: $senderBalance\nAmount: $amount";
  }
}

class ReceiverNotAuthenticatedException implements Exception {
  static const report = "ReceiverNotAuthenticatedException";
  String idReceiver;
  ReceiverNotAuthenticatedException({required this.idReceiver});

  @override
  String toString() {
    return "$report\nId Receiver: $idReceiver";
  }
}
