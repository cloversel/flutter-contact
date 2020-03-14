import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();

}

class _CategoryPageState extends State<CategoryPage> {
  // final List<String> entries = <String>['A', 'B', 'C'];
  // final List<int> colorCodes = <int>[600, 500, 100];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text("Category"),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.settings,
                size: 30,
              ),
              onPressed: null)
        ],
      ),

      body:
      ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: ListTile(
                leading: FlutterLogo(size: 72.0),
                title: Text('Co-Worker'),

                onTap: () {
                  Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => DetailCategoryPage())
                  );
                }
              ),
            );
          }),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, 'addCategory');
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}

class DetailCategoryPage extends StatelessWidget {
  DetailCategoryPage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Co-Worker'),
      ),
      body:ListView.separated(
                separatorBuilder: (BuildContext context, int index) => const Divider(),
                padding: const EdgeInsets.all(8),
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: ListTile(
                      leading: FlutterLogo(size: 72.0),
                      title: Text('wayan edi sudarma'),
                      subtitle: Text('081311902630989895656'),
                    ),
                  );
                }),


    );
  }
}


