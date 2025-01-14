import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  PageController controller = PageController(initialPage: 1, viewportFraction: 0.8);
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("PageView"),
        ),
        body:
        PageView(
          controller: controller,
          children: [
            Container(
              margin: EdgeInsets.all(20),
              color: Colors.red,
            ),
            Container(
              margin: EdgeInsets.all(20),
              color: Colors.green,
            ),
            Container(
              margin: EdgeInsets.all(20),
              color: Colors.blue,
            )
          ],
        )
        ,
      ),
    );
  }
}