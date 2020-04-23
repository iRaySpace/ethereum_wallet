import 'package:ethereum_wallet/common/widgets/expanded_inkwell.dart';
import 'package:ethereum_wallet/common/widgets/large_padding.dart';
import 'package:ethereum_wallet/common/widgets/main_column.dart';
import 'package:ethereum_wallet/common/widgets/medium_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'style.dart';

class WalletOverviewScreen extends StatelessWidget {
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
