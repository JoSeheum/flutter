import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget{


  Widget build(BuildContext context)
  {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Test'),),
        body: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft, // 첫 번째 텍스트를 왼쪽 정렬
              child: Text('HelloWord'),
            ),
            Container(width: double.infinity,
            child: Text('Helloword', textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              height: 31,
              color: Colors.blue,
            ),)
              ,)
            ,
          ],
        ),
      ),
    );
  }
}