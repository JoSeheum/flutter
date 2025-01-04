import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  Future<String> useRootBundle() async{
    return await rootBundle.loadString('text/abc.txt');
  }
  Future<String> useDefaultAssetBundle(BuildContext context) async{
    return await DefaultAssetBundle.of(context).loadString('text/abc.txt');
  }


  Widget build(BuildContext context)
  {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Test'),),
        body: Column(
          children: [
            //Image.asset('image/KakaoTalk_20241212_163830138.jpg'),

            FutureBuilder(
                future: useRootBundle(),
                builder: (context, snapshot){
                  return Text('rootBundle : ${snapshot.data}');
            }
            ),
            FutureBuilder(
                future: useDefaultAssetBundle(context),
                builder: (context, snapshot){
                  return Text('DefaultAssetBundel : ${snapshot.data}');
                }
            )

          ],
        ),
      ),
    );
  }
}