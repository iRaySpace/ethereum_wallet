import 'package:meta/meta.dart';

class Transaction {
  Transaction({
    @required this.id,
    @required this.amount,
    @required this.receivedFrom,
    @required this.timestamp,
  });
  final String id;
  final double amount;
  final String receivedFrom;
  final DateTime timestamp;
}
