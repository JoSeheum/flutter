import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}

class User{
  String name;
  String phone;
  String email;
  User(this.name, this.phone, this.email);
}

class MyApp extends StatelessWidget{
  List<User> users=[
    User("홍길동", "0100000", "a@a.com"),
    User("김길동", "0110000", "a@aㅁ.com"),
    User("이길동", "01010001", "a@aㅊ.com"),
    User("삼길동", "01000002", "a@aㅇㄴㅁ.com"),
    User("사길동", "01000003", "a@aㅁㅈ.com"),
    User("오길동", "01000004", "a@aㅂ.com"),
    User("육길동", "01000005", "a@aㄷ.com"),
    User("칠길동", "01000006", "a@aㅅ.com"),
  ];
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("ListView"),),
        body: ListView.separated(
            itemBuilder: (context, index){
              return ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('image/KakaoTalk_20241212_163830138.jpg'),
                ),
                title: Text(users[index].name),
                subtitle: Text(users[index].phone),
                trailing: Icon(Icons.more_vert),
                onTap: (){
                  print(users[index].name);
                },
              );
            }
            , separatorBuilder: (context, index){
              return Divider(height: 2, color: Colors.black,);
            }
            , itemCount: users.length),

      ),
    );
  }
}