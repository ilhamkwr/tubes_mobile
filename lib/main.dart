import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';
import './detail.dart';

void main(){
  runApp(new MaterialApp(
    title: "MyStore",
    home: new Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {

Future<List> getData() async{
  final response = await http.get("http://192.168.43.207/api_toko/getdata.php");
  return json.decode(response.body);
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("MYSTOR"),
        ),
      floatingActionButton: new FloatingActionButton(
        child: new Icon(Icons.add),
        onPressed: (){},
      ),
      body: new FutureBuilder<List>(
        future: getData(),
        builder: (context, snapshot){
          if(snapshot.hasError) print(snapshot.error);

          return snapshot.hasData 
          ? new ItemList(list: snapshot.data,)
          : new Center( child: new CircularProgressIndicator(),);
        },
      ),
    );
  }
}

class ItemList extends StatelessWidget {
  final List list;
  ItemList({this.list});
  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list==null ? 0 :list.length,
      itemBuilder: (context, i){

        return Container(
          padding: const EdgeInsets.all(10.0),
                  child: GestureDetector(
                    onTap: ()=>Navigator.of(context).push(
                      new MaterialPageRoute(
                        builder: (BuildContext context)=> new Detail(list: list, index: i,)
                      )
                    ),
                                      child: new Card(
                      child: new ListTile(
              title: new Text(list[i]['nama_produk']),
              leading: new Icon(Icons.widgets),
              subtitle: new Text("Stock : ${list[i]['stok']}"),
            ),
          ),
                  ),
        );
      },
    );
  }
}