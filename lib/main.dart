import 'package:ethereum_wallet/common/helpers/ethereum.dart';
import 'package:ethereum_wallet/wallet/presentation/wallet_overview/wallet_overview_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  EthWallet.initialize();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ethereum Wallet',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        textTheme: GoogleFonts.latoTextTheme(),
      ),
      home: WalletOverviewScreen(),
    );
  }
}
