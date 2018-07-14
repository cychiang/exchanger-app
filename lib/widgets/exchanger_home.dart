import 'package:exchanger/widgets/currency_card.dart';
import 'package:exchanger/widgets/exchanger_provider.dart';
import 'package:flutter/material.dart';

class ExchangerHome extends StatefulWidget {
  _ExchangerHomeState createState() => new _ExchangerHomeState();
}

class _ExchangerHomeState extends State<ExchangerHome> {
  @override
  Widget build(BuildContext context) {
    final exchangerBloc = ExchangerProvider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Exchanger'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10.0),
            child: TextField(
              onChanged: exchangerBloc.query.add,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Search for something',
              ),
            ),
          ),
          Flexible(
            child: StreamBuilder(
                stream: exchangerBloc.results,
                builder: (context, snapshot) {
                  if (!snapshot.hasData)
                    return Center(
                      child: CircularProgressIndicator(),
                    );
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
