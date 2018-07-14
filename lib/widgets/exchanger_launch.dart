import 'dart:async';
import 'package:flutter/material.dart';

class ExchangerLaunch extends StatefulWidget {
  @override
  _ExchangerLaunchState createState() => new _ExchangerLaunchState();
}

class _ExchangerLaunchState extends State<ExchangerLaunch> {

  startTime() async {
    var _duration = new Duration(seconds: 2);
    return new Timer(_duration, homePage);
  }

  void homePage() {
    Navigator.of(context).pushReplacementNamed('/exchanger_home');
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Image.asset('assets/logo/flutter.png'),
      ),
    );
  }
}