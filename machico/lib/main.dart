import 'package:flutter/material.dart';
import 'package:machico/store_details.dart';
import 'hex_color.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: EventListPage(title: 'Flutter Detail Page'),
    );
  }
}

class EventListPage extends StatefulWidget {
  EventListPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _EventListState createState() => _EventListState();
}

class _EventListState extends State<EventListPage>{
  int _counter = 0;

  List<String> storeNameList = ['タピオカや','お化け屋敷','ライブ'];

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('金沢工業大学文化祭'),
        backgroundColor: HexColor('31606D'),
      ),
      body: ListView.builder(
        itemCount: storeNameList.length,
          itemBuilder: (BuildContext context, int index){
            return Column(
              children: [
                ListTile(
                  leading: Icon(Icons.store),
                  title: Text(storeNameList[index]),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => StoreDetails()));
                  },
                ),
                Divider(),
              ],
            );
          },
      )
    );
  }
}