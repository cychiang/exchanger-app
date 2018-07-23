import 'package:exchanger/widgets/currency_card.dart';
import 'package:exchanger/widgets/exchanger_provider.dart';
import 'package:exchanger/widgets/exchanger_card_swipe.dart';
import 'package:exchanger/protos/oxr.pb.dart';
import 'package:flutter/material.dart';

class ExchangerHome extends StatefulWidget {
  _ExchangerHomeState createState() => new _ExchangerHomeState();
}

class _ExchangerHomeState extends State<ExchangerHome>
    with WidgetsBindingObserver {
  AppLifecycleState _lastLifecycleState;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    setState(() {
      _lastLifecycleState = state;
    });
  }

  @override
  Widget build(BuildContext context) {
    final exchangerBloc = ExchangerProvider.of(context);
    // TODO: Add base currency
    // TODO: Add functionality to select target currency
    if (_lastLifecycleState == null) {
      print(_lastLifecycleState);
    } else {
      print(_lastLifecycleState);
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exchanger'),
        backgroundColor: Colors.pink,
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
                      ..api = 'latest'
                      ..base = 'TWD'
                      ..symbols = 'SEK,JPY,USD');
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  var items = snapshot.data['rates'].keys.toList();
                  return ListView.builder(
                    itemCount: snapshot.data['rates'].keys.length,
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
                        child: CurrencyCard(
                            currencyName: items[index],
                            currencyRate: snapshot.data['rates'][items[index]]),
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
