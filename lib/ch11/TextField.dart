import 'package:flutter/material.dart';
import 'package:untitled1/ch8_3_statelesswidget/test1.dart';

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
          title: Text("TextField"),
        ),
        body: TestScreen(),
      ),
    );
  }
}

class TestScreen extends StatefulWidget{
  TextState createState() => TextState();
}

class TextState extends State<TestScreen>
{
  //플러터에서 알아서 타입을 지정
  final controller = TextEditingController();
  int textCounter =0;

  //암시적으로 앞에 void가 있는것과 같음
  _printValue()
  {
    print("_printValue(): ${controller.text}");
    //여기서 위젯 다시 업로드
    setState(() {
      textCounter = controller.text.length;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //리스너는 한번만 등록을 하기위해 initState에 등록
    controller.addListener(_printValue);
  }

  @override
  void dispose()
  {
    //앱이 종료될 때 TextField에서 사용하던 controller도 삭제
    controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context)
  {
    print("build");
    return Column(
      children: [
        Text("Textfield test"),
        TextField(
          style: TextStyle(fontSize: 15.0),
          controller: controller,
          decoration: InputDecoration(
            labelText: 'Data',
            prefixIcon: Icon(Icons.input),
            border: OutlineInputBorder(),
            hintText: "Hint Text",
            helperText: "데이터를 입력하세요",
            counterText: "$textCounter characters",
          ),
          textInputAction: TextInputAction.search,
          keyboardType: TextInputType.emailAddress,
          minLines: 2,
          maxLines: 5,
        ),
      ],
    );
  }
}