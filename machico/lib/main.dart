import 'package:flutter/material.dart';
import 'package:machico/store_addition.dart';
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

  List<String> storeNameList = [
    'タピオカや',
    'お化け屋敷',
    'ライブ',
    '唐揚げや',
    '美術部展示',
    'おにぎりや',
    'ハンバーガーや',
    '演劇ショー',
    '写真部展示',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('金沢工業大学文化祭'),
        backgroundColor: HexColor('31606D'),
        actions: [
          IconButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => StoreAddition()
                ),
              );
            },
            icon: Icon(Icons.add),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: storeNameList.length,
          itemBuilder: (BuildContext context, int index){
            return Column(
              children: [
                ListTile(
                  leading: Image.network('https://mrs.living.jp/wp-content/uploads/2019/08/190802_BOTANIST_eye.jpg'),
                  title: Text(storeNameList[index]),
                  trailing: Text(
                    '30分',
                    style: TextStyle(fontSize: 40,color: HexColor('31606D')),
                  ),
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