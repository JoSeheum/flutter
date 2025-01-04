import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('test'),
        ),
        body: Column(
          children: [
            IntrinsicWidth(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(color: Colors.red, width: 50.0, height: 50.0,),
                  Container(color: Colors.green, width: 150.0, height: 150.0,),
                  Container(color: Colors.blue, width: 100.0, height: 100.0,),
                ],
              ),
            ),
            ConstrainedBox(constraints: BoxConstraints(
              minHeight: 50,
              minWidth: 300
            ),
            child: Container(color: Colors.amber, width: 150, height: 50,),
            )
          ],
        ),
      ),
    );
  }
}