
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:machico/hex_color.dart';

class StoreDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: HexColor('#31606D'),
        ),
        body: Container(
          margin: const EdgeInsets.all(16.0),
          color: HexColor('#F6FFF7'), // HexColorで指定
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.network(
                    'https://mrs.living.jp/wp-content/uploads/2019/08/190802_BOTANIST_eye.jpg'),
                _shopnameArea(),
                _shopPlaceArea(),
                _messageArea(),
              ]
          ),
        )
    );
    throw UnimplementedError();
  }
}

Widget _shopnameArea() {
  return Container(
      margin: EdgeInsets.all(16.0),
      child: Row(    // 1行目
        children: <Widget>[
          Expanded(  // 2.1列目
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(  // 3.1.1行目
                  margin: const EdgeInsets.only(bottom: 4.0),
                  child: Text(
                    "タピリーノ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                ),
                Container(  // 3.1.2行目
                  child: Text(
                    "モチモチおいしいタピオカドリンク",
                    style: TextStyle(fontSize: 12.0, color: Colors.grey),
                  ),
                ),
              ],
            ),
          ),
          Text(
             '待ち時間',
             style: TextStyle(
                 fontWeight: FontWeight.bold,fontSize: 15.0),
           ),

          Text('  30分',  // 2.3列目
          style: TextStyle(
              fontWeight: FontWeight.bold,fontSize: 20.0),
          )
        ],
      ),
  );
}

Widget _shopPlaceArea() {
  return Container(
    margin: EdgeInsets.all(16.0),
    child: Row(    // 1行目
      children: <Widget>[
        Expanded(  // 2.1列目
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(  // 3.1.1行目
                margin: const EdgeInsets.only(bottom: 4.0),
                child: Text(
                  "<Oo号館00階>",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16.0),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget _messageArea() {
  return Container(
    margin: EdgeInsets.all(16.0),
    child: Row(    // 1行目
        children: <Widget>[
    Expanded(  // 2.1列目
    child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
    Container(  // 3.1.1行目
    margin: const EdgeInsets.only(bottom: 4.0),
    child: Text(
      "美味しいタピオカモチモチモチモッチャモチャモチャタピオカちゃちゃちゃ",
      style: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 16.0),
    ),
  ),
  ],
  ),
  ),
  ],
  ),
  );
}





