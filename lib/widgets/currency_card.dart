import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  // init Currency
  final String currencyName;
  final String currencyRate;

  CurrencyCard(
      {Key key, @required this.currencyName, @required this.currencyRate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Card(
      child: new Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: Image.asset('icons/currency/${this.currencyName}.png',
                package: 'currency_icons'),
            title: Text(this.currencyName),
            subtitle: Text(this.currencyRate),
          ),
        ],
      ),
    );
  }
}
