import 'package:flutter/material.dart';
import 'app/index.dart';
import 'app/exchangerProvider.dart';
import 'models/exchangerBloc.dart';
import 'models/grpc_api.dart';

void main() => runApp(new Main());

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExchangerProvider(
      exchangerBloc: ExchangerBloc(API()),
      child: MaterialApp(
        title: 'Exchanger',
        theme: ThemeData(),
        home: XHome(),
      ),
    );
  }
}
