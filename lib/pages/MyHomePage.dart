import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // final List<String> entries = <String>['A', 'B', 'C'];
  // final List<int> colorCodes = <int>[600, 500, 100];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contacts"),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.settings,
                size: 30,
              ),
              onPressed: null),
        ],
      ),
      body:
          ListView.builder(
              itemCount: 15,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: ListTile(
                    leading: FlutterLogo(size: 72.0),
                    title: Text('wayan edi sudarma'),
                    subtitle: Text('081311902630989895656'),
                  ),
                );
              }),


      floatingActionButton:
      Stack(
        children: <Widget>[
          Align(alignment: Alignment.bottomRight,
          child: FloatingActionButton(
            heroTag: "AddContactBtn",
            onPressed: () {
              Navigator.pushNamed(context, 'addContact');
            },
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),),
          Align(alignment: Alignment.bottomLeft,

          child: Container(
            margin: EdgeInsets.only(left: 30.0),
            child: FloatingActionButton(
              heroTag: "CategoryPageBtn",
              onPressed: () {
                Navigator.pushNamed(context, 'categoryPage');
              },
              tooltip: 'Increment',
              child: Icon(Icons.book),
            ),
          )

          )
        ],
      )

    );
  }
}

