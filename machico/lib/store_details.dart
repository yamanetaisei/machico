
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:machico/hex_color.dart';

class StoreDetails extends StatelessWidget{
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
        )
    );
    throw UnimplementedError();
  }

}