import 'package:flutter/material.dart';
import 'package:qrscan/qrscan.dart' as scanner;

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 
  String barcode = '';

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.yellow,
      appBar: AppBar(title : Text("QR SCAN"),),
      body: Center(
        child : Column(
          children : <Widget>[
            
            RaisedButton(onPressed: _scan, child: Text("Scan")),
             Text('RESULT  $barcode'),
          ],
        ),
      ),
    );
  }

  Future _scan() async {
    String barcode = await scanner.scan();
    setState(() => this.barcode = barcode);
  }
}