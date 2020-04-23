import 'dart:math';

import 'package:web3dart/credentials.dart';

class EthWallet {
  EthWallet._();
  static void initialize() async {
    final rng = Random.secure();
    final credentials = EthPrivateKey.createRandom(rng);
  }
}
