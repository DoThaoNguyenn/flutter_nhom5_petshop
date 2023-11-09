import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "App đầu tiên",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Đây mới là tiêu đề"),
        ),
          body: Center(
            child: Text("Test app"),
          ),
      ),
    );
  } 
}