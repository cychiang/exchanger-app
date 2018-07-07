import 'package:flutter/material.dart';
import 'exchangerProvider.dart';


class XHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final exchangerBloc = ExchangerProvider.of(context);

    return Scaffold(
        appBar: AppBar(
          title: const Text('Exchanger'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.menu),
            )
          ],
        ),
        body: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10.0),
              child: TextField(
                onChanged: exchangerBloc.query.add,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Search for a Movie',
                ),
              ),
            ),
            StreamBuilder(
              stream: exchangerBloc.log,
              builder: (context, snapshot) => Container(
                child: Text(snapshot?.data ?? ''),
              ),
            ),
            Flexible(
              child: StreamBuilder(
                  stream: exchangerBloc.results,
                  builder: (context, snapshot) {
                    if(!snapshot.hasData)
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    return ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) => ListTile(
                        title: Text(snapshot.data[index].currency.toString()),
                        subtitle: Text(snapshot.data[index].ratio.toString()),
                      ),
                    );
                  }
              ),
            )
          ],
        ),
    );
  }
}