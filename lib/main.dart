import 'package:flutter/material.dart';
import 'widgets/exchangerHome.dart';
import 'widgets/exchangerProvider.dart';
import 'blocs/exchangerBloc.dart';
import 'apis/grpc_api.dart';

void main() => runApp(new Main());

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExchangerProvider(
      exchangerBloc: ExchangerBloc(API()),
      child: MaterialApp(
        title: 'Exchanger',
        theme: ThemeData(),
        home: XChangerHome(),
      ),
    );
  }
}
