import 'package:exchanger/widgets/currency_card.dart';
import 'package:exchanger/widgets/exchanger_provider.dart';
import 'package:exchanger/protos/open_exchanger.pb.dart';
import 'package:flutter/material.dart';

class ExchangerHome extends StatefulWidget {
  _ExchangerHomeState createState() => new _ExchangerHomeState();
}

class _ExchangerHomeState extends State<ExchangerHome> {
  @override
  Widget build(BuildContext context) {
    final exchangerBloc = ExchangerProvider.of(context);
    // TODO: Add base currency
    // TODO: Add functionality to select target currency
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exchanger'),
      ),
      body: Column(
        children: <Widget>[
          Flexible(
            child: StreamBuilder(
                stream: exchangerBloc.results,
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    // Query data
                    exchangerBloc.query.add(OxrInput()
                      ..base='TWD'
                      ..symbols='SEK,JPY,USD');
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  return ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (context, index) =>
                        CurrencyCard(grpcRate: snapshot.data[index]),
                  );
                }),
          )
        ],
      ),
    );
  }
}
