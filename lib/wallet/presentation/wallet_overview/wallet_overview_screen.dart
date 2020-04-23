import 'package:ethereum_wallet/common/widgets/expanded_inkwell.dart';
import 'package:ethereum_wallet/common/widgets/large_padding.dart';
import 'package:ethereum_wallet/common/widgets/main_column.dart';
import 'package:ethereum_wallet/common/widgets/medium_padding.dart';
import 'package:ethereum_wallet/wallet/data/models/transaction.dart';
import 'package:ethereum_wallet/wallet/data/repositories/transaction_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'style.dart';

// TODO: separate widget creation and data
class WalletOverviewScreen extends StatefulWidget {
  @override
  _WalletOverviewScreenState createState() => _WalletOverviewScreenState();
}

class _WalletOverviewScreenState extends State<WalletOverviewScreen> {
  List<Transaction> _transactions = [];

  @override
  void initState() {
    super.initState();
    _transactions = TransactionRepository.getData();
  }

  // TODO: add intl for date time format
  List<Widget> _recentTransactions() => _transactions
      .map(
        (transaction) => ListTile(
          dense: true,
          leading: Icon(AntDesign.download),
          title: Text('Received'),
          subtitle: Text('5:00PM'),
          trailing: Text(transaction.amount.toString()),
        ),
      )
      .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Overview'),
        centerTitle: true,
        elevation: 0,
      ),
      body: MainColumn(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 180,
                width: double.infinity,
                color: Theme.of(context).primaryColor,
              ),
              Center(
                child: Column(
                  children: <Widget>[
                    LargePadding(
                      child: Text(
                        '100.00',
                        style: Theme.of(context)
                            .textTheme
                            .display3
                            .merge(display3),
                      ),
                    ),
                    SizedBox(
                      width: 480,
                      child: Card(
                        elevation: 1,
                        child: MediumPadding(
                          child: Row(
                            children: <Widget>[
                              ExpandedInkwell(
                                onTap: () => print('Sent'),
                                child: Column(
                                  children: <Widget>[
                                    Icon(AntDesign.upload),
                                    SizedBox(height: 9),
                                    Text('Send'),
                                  ],
                                ),
                              ),
                              ExpandedInkwell(
                                onTap: () => print('Received'),
                                child: Column(
                                  children: <Widget>[
                                    Icon(AntDesign.download),
                                    SizedBox(height: 9),
                                    Text('Receive'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    LargePadding(
                      bottom: Size.small,
                      child: Text(
                        'Recent Transactions',
                        style: Theme.of(context).textTheme.title,
                      ),
                    ),
                    SizedBox(
                      width: 480,
                      child: Card(
                        elevation: 1,
                        child: Column(
                          children: _recentTransactions(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
