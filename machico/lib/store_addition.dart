
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:machico/hex_color.dart';
import 'package:machico/main.dart';

class StoreAddition extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: HexColor('#31606D'),
        ),
        body: Container(
//            margin: EdgeInsets.all(10.0),
            color: HexColor('#F6FFF7'),
            height: double.infinity,
            child: Column(
              children: <Widget>[
                Image.network('https://mrs.living.jp/wp-content/uploads/2019/08/190802_BOTANIST_eye.jpg', height: 250.0, fit: BoxFit.contain,),
                _storeNameArea(),
                _waitTimeArea(),
                _placeArea(),
                _comentArea(),
                new RaisedButton(
                  child: Text('追加'),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyApp(),
                      ),
                    );
                  },
                ),
              ],
            )

        )
    );
    throw UnimplementedError();
  }

}

Widget _storeNameArea() {
  return Container(
      margin: EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Text('店の名前', style: TextStyle(fontSize: 15.0, color: HexColor('#31606D')),),
                ),
                Container(
                  child: new TextField(),
                ),
              ],
            ),
          ),
        ],
      )
  );
}

Widget _waitTimeArea() {
  return Container(
      margin: EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Text('待ち時間', style: TextStyle(fontSize: 15.0, color: HexColor('#31606D')),),
                ),
                Container(
                  child: new TextField(

                  ),
                ),
              ],
            ),
          ),
        ],
      )
  );
}

Widget _placeArea() {
  return Container(
      margin: EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Text('場所', style: TextStyle(fontSize: 15.0, color: HexColor('#31606D')),),
                ),
                Container(
                  child: new TextField(

                  ),
                ),
              ],
            ),
          ),
        ],
      )
  );
}

Widget _comentArea() {
  return Container(
      margin: EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Text('コメント', style: TextStyle(fontSize: 15.0, color: HexColor('#31606D')),),
                ),
                Container(
                  child: new TextField(

                  ),
                ),
              ],
            ),
          ),
        ],
      )
  );
}