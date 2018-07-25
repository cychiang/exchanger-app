import 'dart:async';
import 'package:flutter/material.dart';
import 'dart:io';

// TODO: Write

class ExchangerLaunch extends StatefulWidget {
  @override
  _ExchangerLaunchState createState() => new _ExchangerLaunchState();
}

class _ExchangerLaunchState extends State<ExchangerLaunch> {
  startTime() async {
    var _duration = new Duration(seconds: 3);
    return new Timer(_duration, homePage);
  }

  homePage() {
    Navigator.of(context).pushReplacementNamed('/exchanger_home');
  }

  Future<Null> initProcess() async {
    sleep(new Duration(seconds: 10));
  }

  Future<Null> timeoutHandler() async {}
  @override
  void initState() {
    super.initState();
    // TODO: Fetch data from API
    // TODO: Timeout handling
    // TODO: Local DB
    // TODO: Figure out how timeout works
    initProcess()
        .timeout(new Duration(seconds: 3), onTimeout: timeoutHandler)
        .whenComplete(homePage);
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
