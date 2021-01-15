
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
          margin: EdgeInsets.all(10.0),
          color: HexColor('#F6FFF7'), // HexColorで指定
          height: double.infinity,
          child: Column(
            children: <Widget>[
              Image.network('https://msp.c.yimg.jp/images/v2/FUTi93tXq405grZVGgDqGxtNjnmUEa9fGnRT9jceU1GLDjz7uf_VrX6drCtB41Y1NmudLLlLzwcAzNwTUaWnU-vFeodE6Dkr0De3mFD7v_YggfheT3VZvQQXUlSp7XonV8ZzZdl0B_1jHxe-5SA7WATPRVy9yBzLzKuMrDKcmdC3KKF07RK6ISX8jRCtQmoGdFbeGQ38QF-YvSiruEgeJQ==/middle_1284395390.jpg?errorImage=false'),
              Text(
                '店の名前', style: TextStyle(fontSize: 15.0, color: HexColor('#31606D')),),
              new TextField(

              ),
              Text('待ち時間', style: TextStyle(fontSize: 15.0, color: HexColor('#31606D')),),
              new TextField(

              ),
              Text('場所', style: TextStyle(fontSize: 15.0, color: HexColor('#31606D')),),
              new TextField(

              ),
              Text('コメント', style: TextStyle(fontSize: 15.0, color: HexColor('#31606D')),),
              new TextField(

              ),
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