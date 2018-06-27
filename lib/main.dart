import 'package:flutter/material.dart';

void main() => runApp(new App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Exchanger',
      theme: new ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: new DefaultTabController(length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(tabs: [
              Tab(icon: Icon(Icons.directions_car)),
              Tab(icon: Icon(Icons.directions_transit)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],),
            title: Text('CHOCO TV'),
          ),
        ),
      )
    );
  }
}

class HomePageTabViews extends DefaultTabController {

}