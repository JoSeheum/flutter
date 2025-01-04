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
            GestureDetector(
              child: Image.asset('image/KakaoTalk_20241212_163830138.jpg',
              width: 100,
              height: 100,),
              onTap: (){
                print('image click');
              },
              onVerticalDragStart: (DragStartDetails details){
                print('vertical drag start globbal : ${details.globalPosition.dx}, '
                    '${details.globalPosition.dy}');
                print('vertical drag start local : ${details.localPosition.dx}, ${details.localPosition.dy}');
              }
            ),
            ElevatedButton(onPressed: ()
                {
                  print('ElevatedButton Click');
                }, child: Text('Click Me'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.red)
              ),
            )
          ],
        ),
      ),
    );
  }
}