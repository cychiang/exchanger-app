import 'package:exchanger/widgets/currency_card.dart';
import 'package:exchanger/widgets/exchanger_provider.dart';
import 'package:exchanger/widgets/exchanger_card_swipe.dart';
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
                    print('Hi');
                    exchangerBloc.query.add(OxrInput()
                      ..base = 'TWD'
                      ..symbols = 'SEK,JPY,USD');
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  return ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (context, index) {
                      return new OnSlide(
                        items: <ActionItems>[
                          new ActionItems(
                              icon: new IconButton(
                                icon: new Icon(Icons.save),
                                onPressed: () {},
                                color: Colors.blue,
                              ),
                              onPress: () {},
                              backgroundColor: Colors.white),
                          new ActionItems(
                              icon: new IconButton(
                                icon: new Icon(Icons.bookmark),
                                onPressed: () {},
                                color: Colors.orange,
                              ),
                              onPress: () {},
                              backgroundColor: Colors.white),
                        ],
                        child: CurrencyCard(grpcRate: snapshot.data[index]),
                      );
                    },
                  );
                }),
          )
        ],
      ),
    );
  }
}
