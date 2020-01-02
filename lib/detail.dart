import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  List list;
  int index;
  Detail({this.index,this.list});
  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("${widget.list[widget.index]['nama_produk']}")),
    
      body: new Container(
        height: 250.0,
        padding: const EdgeInsets.all(20.0),
        child: new Card(
          child: new Center(
            child: new Column(
              children: <Widget>[
                new Padding(padding: const EdgeInsets.only(top:30.0),),
                new Text(widget.list[widget.index]['nama_produk'], style: new TextStyle(fontSize: 20.0),),
                new Text("Harga : ${widget.list[widget.index]['harga']}", style: new TextStyle(fontSize: 18.0),),
                new Text("Deskripsi : ${widget.list[widget.index]['deskripsi']}", style: new TextStyle(fontSize: 18.0),),
                new Text("Stok : ${widget.list[widget.index]['stok']}", style: new TextStyle(fontSize: 18.0),),
                
                
                new Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    new RaisedButton(
                      child: new Text("EDIT"),
                      color: Colors.green,
                      onPressed: (){},
                    ),
                    new RaisedButton(
                      child: new Text("HAPUS"),
                      color: Colors.red,
                      onPressed: (){},
                    ),
                  ],
                  )
              ],
            ),
          ),),
          ),
    );
  }
}