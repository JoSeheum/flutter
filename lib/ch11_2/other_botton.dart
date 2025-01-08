import 'package:flutter/material.dart';

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
        appBar: AppBar(
          title: Text("other bottn"),
        ),
        body: TestScreen(),
      ),
    );
  }
}

class TestScreen extends StatefulWidget
{
  @override
  TextState createState() => TextState();
}

class TextState extends State<TestScreen>
{
  bool? isChecked = true;
  String? selectPaltform;
  double sliderValue = 5.0;
  bool switchValue = true;
  
  @override
  Widget build(BuildContext context)
  {
    return Column(
      children: [
        Text("CheckBox Test"),
        Row(
          children: [
            Checkbox(
                value: isChecked, 
                onChanged: (bool? value)
                {
                  setState(() {
                    isChecked = value;
                  });
                }
            ),
            Text("checkbox value is $isChecked"),
          ],
        ),
        Text("Radio Test"),
        Row(
          children: [
            Radio(value: "android", 
                groupValue: selectPaltform, 
                onChanged: (String? value){
                  setState(() {
                    selectPaltform = value;
                  });
                }
            ),
            Text("android"),
          ],
        ),
        Row(
          children: [
            Radio(value: "ios",
                groupValue: selectPaltform,
                onChanged: (String? value){
                  setState(() {
                    selectPaltform = value;
                  });
                }
            ),
            Text("ios"),
          ],
        ),
        Text("select paltform is $selectPaltform"),
        Text("Slider Test"),
        Slider(value: sliderValue,
            min: 0,
            max: 10
            , onChanged: (double value)
            {
              setState(() {
                sliderValue = value;
              });
            }
        ),
        Text("slider value is $sliderValue"),
        Text("Switch Test"),
        Switch(value: switchValue,
            onChanged: (bool value)
        {
          setState(() {
            switchValue = value;
          });
        }),
        Text("select value is $switchValue"),
      ],
    );
  }
}