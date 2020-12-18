import 'package:flutter/material.dart';
import 'hex_color.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        
        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: ListView.separated(
          itemCount: listTiles.length,
          separatorBuilder: (BuildContext context, int index) => Divider(color: Colors.black,),
        itemBuilder: (BuildContext context, int index) {
          return listTiles[index];
        },
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  //ダミーデータ↓
  static const List<Widget> listTiles = const <Widget>[
    ListTile(
      title: Text('お化け屋敷'),
    ),
    ListTile(
      title: Text('タピオカや'),
    ),
    ListTile(
      title: Text('カフェ'),
    ),
    ListTile(
      title: Text('作品展示'),
    ),
    ListTile(
      title: Text('軽音部ライブ'),
    ),
  ];
}