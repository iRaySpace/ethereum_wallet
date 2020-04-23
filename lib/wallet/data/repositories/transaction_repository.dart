import 'package:ethereum_wallet/wallet/data/models/transaction.dart';

// TODO: interface
class TransactionRepository {
  TransactionRepository._();
  static List<Transaction> getData() {
    return [
      Transaction(
          id: '0x90o90eoa9e0ao90e9oa0ea9',
          amount: 1.0,
          receivedFrom: '0x9120910920109',
          timestamp: DateTime.now()),
      Transaction(
          id: '0x90o90eeao9e0ao90e9oa0oae9',
          amount: 0.5,
          receivedFrom: '0x9120910920109',
          timestamp: DateTime.now()),
      Transaction(
          id: '0x90eotaahcehacrohrea9',
          amount: 2.0,
          receivedFrom: '0xecohechohceohc920109',
          timestamp: DateTime.now()),
    ];
  }
}
