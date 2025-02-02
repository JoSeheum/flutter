import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  Widget build(BuildContext context)
  {
    return MaterialApp(
      home: MyListWidget(),
    );
  }
}

class MyListWidget extends StatefulWidget{
  State<StatefulWidget> createState(){
    return _MyListWidgetState();
  }
}

class _MyListWidgetState extends State<MyListWidget> {
  List<Widget> widgetList = [
    MyColorItemWidget(Colors.red, key: UniqueKey(),),
    MyColorItemWidget(Colors.blue, key: UniqueKey(),)
  ];

  onChange()
  {
    print('LTS ${widgetList.elementAt(0).key}');
    setState(() {
      widgetList.insert(1, widgetList.removeAt(0));
    });
  }

  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(title: Text('Key Test'),),
      body: Column(
        children: [
          Row(children: widgetList,),
          ElevatedButton(onPressed: onChange, child: Text("toggle"))
        ],
      ),
    );
  }
}

class MyColorItemWidget extends StatefulWidget{
  Color color;
  MyColorItemWidget(this.color, {Key? key}) : super(key: key);

  State<StatefulWidget> createState(){
    return _MyColorItemWidgetState(color);
  }
}

class _MyColorItemWidgetState extends State<MyColorItemWidget>{
  Color color;
  _MyColorItemWidgetState(this.color);

  Widget build(BuildContext context)
  {
    return Expanded(
      child: Container(
        color: color,
        width: 150,
        height: 150,
      ),
    );
  }
}