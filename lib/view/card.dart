import 'package:flutter/material.dart';
import '../src/generated/protos/open_exchanger.pb.dart';

class CurrencyCard extends StatelessWidget {
  // init Currency
  final GrpcRate grpcRate;

  CurrencyCard({Key key, @required this.grpcRate}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Card(
      child: new Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
            ListTile(
              leading: Image.asset('icons/currency/${grpcRate.currency.toLowerCase()}.png', package: 'currency_icons'),
              title: Text(grpcRate.currency),
              subtitle: Text(grpcRate.ratio.toString()),
          ),
        ],
      ),
    );
  }
}
