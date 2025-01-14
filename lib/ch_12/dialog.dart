import 'package:flutter/material.dart';

import 'package:intl/intl.dart';
import 'package:untitled1/ch11/TextField.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("dialog"),
            ),
        body: TestScreen(),

      ),
    );
  }
}

class TestScreen extends StatefulWidget{
  @override
  TextState createState() => TextState();
}

class TextState extends State<TestScreen>
{
  DateTime dateValue = DateTime.now();
  TimeOfDay timeValue = TimeOfDay.now();

  _dialog(){
    showDialog(
        context: context,
        //메세지 바깥쪽을 터치해도 사라지지 않도록 설정
        barrierDismissible: false,
        builder: (BuildContext context)
        {
          //showDialog이기 때문에 AlertDialog를 반환
          return AlertDialog(
            //제목
            title: Text("Dialog Title"),
            //본문
            content: Column(
              //주축 크기
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  decoration: InputDecoration(border: OutlineInputBorder()),
                ),
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value){}),
                    Text("수신 동의")
                  ],
                )
              ],
            ),
            actions: [
              TextButton(onPressed: (){
                Navigator.of(context).pop();
              }

              , child: Text("OK"))
            ],
          );
        }
    );
  }

  //바깥쪽을 클릭해도 사라지지 않음
  _bottomSheet()
  {
    showBottomSheet(
        context: context,
        backgroundColor: Colors.yellow,
        builder: (context){
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: Icon(Icons.add),
                title: Text("ADD"),
                onTap: (){
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: Icon(Icons.remove),
                title: Text("REMOVE"),
                onTap: (){
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        }
    );
  }

  //바깥쪽을 클릭하면 사라짐
  _modalBottomSheet()
  {
    showModalBottomSheet(
        context: context,
        backgroundColor: Colors.yellow,
        builder: (context){
          return SafeArea(child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: Icon(Icons.add),
                title: Text("ADD"),
                onTap: (){
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: Icon(Icons.remove),
                title: Text("REMOVE"),
                onTap: (){
                  Navigator.of(context).pop();
                },
              ),
            ],
          ));
        }
    );
  }

  Future datePicker() async{
    DateTime? picked = await showDatePicker(context: context,
        //처음 표시, 처음 날짜, 마지막 날짜 설정
        initialDate: new DateTime.now(),
        firstDate: new DateTime(2016),
        lastDate: new DateTime(2030));
    if(picked != null) setState(() {
      dateValue = picked;
    });
  }

  Future timePicker() async{
    TimeOfDay? selectedTime = await showTimePicker(context: context,
        //처음 시간 설정
        initialTime: TimeOfDay.now());
    if(selectedTime != null) setState(() => timeValue = selectedTime);
  }

  Widget build(BuildContext context)
  {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: _dialog, child: Text("dialog")),
          ElevatedButton(onPressed: _bottomSheet, child: Text("bottomSheet")),
          ElevatedButton(onPressed: _modalBottomSheet, child: Text("modalBottomSheet")),
          ElevatedButton(onPressed: datePicker, child: Text("datepicker")),
          Text("date : ${DateFormat('yyyy-MM-dd').format(dateValue)}"),
          ElevatedButton(onPressed: timePicker, child: Text("timepicker")),
          Text("time : ${timeValue.hour} : ${timeValue.minute}"),
        ],
      ),
    );
  }
}