import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  Widget build(BuildContext context)
  {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Test'),
        ),
        body: Column(children: [
          Image(image: NetworkImage('https://flutter.github.io/assets-for-api-'
          'docs/assets/widget/owl.jpg'),
          ),

          Container(
            color: Colors.red,
            child: Image.asset(
                'image/KakaoTalk_20241212_163830138.jpg',
              width: 200,
              height: 100,
              fit: BoxFit.fill,
            ),
          )
        ],),
      ),
    );
  }
}