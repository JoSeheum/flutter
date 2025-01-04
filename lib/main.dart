import 'package:flutter/material.dart';
//이렇게 괄호안이 아닌곳이 톱 레벨(어느곳에도 속하지 않는곳)

//실행 순서
//main()=> MyApp => MyHomePage => _MyHomePageState
void main() {
  //첫 화면을 구성하는 위젯(화면을 구성하는 클레스)을 지정한 것
  runApp(const MyApp());
}

//첫 화면을 구성할 위젯
//StatelessWidget은 화면 구성과 위젯에 출력되는 데이터등을 별도의 State클레스에 저장하는데 여기서는 그 State클레스가 _MyHomePageState
//StatelessWidget은 상태를 관리하지 않는 정적인 위젯
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //위젯 클레스가 실행되면 자동으로 build함수가 호출되고 build함수에서 반환된 위젯이 화면에 호출됨
  @override
  Widget build(BuildContext context) {  //build함수 안에 화면을 어떻게 구성할지 작성

    //플러터에서 제공하는 위젯이며 앱의 머티리얼 디자인을 적용하게 해줌
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),

      //MyHomePage는 main.dart파일에 선언된 사용자 정의 위젯
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

//StatefulWidget클래스가 실행되면 createState()함수가 자동으로 호출되어 StatefulWidget을 위한 State클래스 객체 반환
//StatefulWidget은 상태를 관리하는 동적인 위젯
class MyHomePage extends StatefulWidget {
  //명명된 매개변수로 key는 안받아도 되는데 title은 required로 선언해서 무조건 받아야함
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

//이게 state클레스
//여기에 myhomepage에 대한 정보를 저장
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  //_MyHomePageState의 빌드함수 (자동실행)
  @override
  Widget build(BuildContext context) {

    //화면의 구성요소를 묶어주는 위젯
    return Scaffold(
      //Appbar => 화면 위쪽의 타이틀바
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      //
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              '1234',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
