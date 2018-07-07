import 'package:flutter/material.dart';
import 'exchangerProvider.dart';
import '../models/exchangerBloc.dart';
import '../models/grpc_api.dart';


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
        )
    );
  }
}