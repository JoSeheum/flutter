import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  List<String> citys = ["서울시", "부산시", "인천시", "대구시", "광주시", "울산시", "세종시", "대전시","서울시", "부산시", "인천시", "대구시", "광주시", "울산시", "세종시", "대전시",
    "서울시", "부산시", "인천시", "대구시", "광주시", "울산시", "세종시", "대전시","서울시", "부산시", "인천시", "대구시", "광주시", "울산시", "세종시", "대전시"];
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("GridViewTest"),
        ),
        body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            itemBuilder: (context, index)
          {
            return Card(
              child: Column(
                children: [
                  Text(citys[index]), Image.asset('image/KakaoTalk_20241212_163830138.jpg')
                ],
              ),
            );
          },
            itemCount:citys.length,
            scrollDirection: Axis.horizontal,

          ),
      ),
    );
  }
}