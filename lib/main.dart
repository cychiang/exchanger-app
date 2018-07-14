import 'package:flutter/material.dart';
import 'package:exchanger/apis/exchanger_api.dart';
import 'package:exchanger/blocs/exchanger_bloc.dart';
import 'package:exchanger/widgets/exchanger_home.dart';
import 'package:exchanger/widgets/exchanger_provider.dart';


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
