import 'package:flutter/material.dart';

class AddData extends StatefulWidget {
  @override
  _AddDataState createState() => _AddDataState();
}

class _AddDataState extends State<AddData> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("ADD DATA"),),
      body: new Column(
        children: <Widget>[
          new TextField(
            decoration: new InputDecoration(
              hintText: "Item Code",
              labelText : "Item Code"
            ),
          )
        ],
      ),
    );
  }
}