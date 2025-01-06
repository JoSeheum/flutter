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
          title: Text('Test_SingleScroll'),
        ),
        body: SingleChildScrollView(
          //스크롤뷰를 vertical(세로)로 설정
          scrollDirection: Axis.vertical,
          child: Column(
            //여기서의 Widget은 최상위 타입인데 굳이 제네릭으로 선언한 이유를 모르겠음
            children: <Widget>[
              Container(
                height: 300,
                //Column안에 가로의 열을 만들기 위해서 사용
                child: Row(
                  children: <Widget>[
                    Container(
                      color: Colors.red,
                      width: 100,
                    ),
                    //차지하는 비중을 비율로 처리하기 위해 Expanded사용
                    Expanded(
                        flex: 1,
                        child: Container(
                        color: Colors.amber,
                    )),
                    Expanded(
                        flex: 1,
                        child: Container(
                          color: Colors.yellow,
                        )),
                  ],
                ),
              ),
              Container(
                color: Colors.green,
                height: 300,
                child: Row(
                  children: <Widget>[
                    Image.asset("image/KakaoTalk_20241212_163830138.jpg"),
                    Image.asset("image/KakaoTalk_20241212_163830138.jpg"),
                    Image.asset("image/KakaoTalk_20241212_163830138.jpg"),
                    //이미지 사이에 빈공간을 만듦
                    Spacer(),
                    Image.asset("image/KakaoTalk_20241212_163830138.jpg")
                    //여기서 스크롤뷰를 지정해 주지 않아 맨 오른쪽에 경고표시가 나옴
                  ],
                ),
              ),
              Container(
                color: Colors.blue,
                height: 300,
              ),
            ],
          ),
        ),

      ),
    );
  }
}