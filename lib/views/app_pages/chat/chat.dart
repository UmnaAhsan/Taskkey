import 'package:flutter/material.dart';
import 'package:todo_task_app/views/appbar/appbar.dart';

class chat extends StatefulWidget {
  const chat({super.key});

  @override
  State<chat> createState() => _chatState();
}

class _chatState extends State<chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
       appBar:
        PreferredSize(preferredSize: Size.fromHeight(90.0),
      child: appbar9()),
     body: Column(children: [
      SizedBox(height: 15,),
       Center(
          child: Container(height: 40,width: 300,decoration: BoxDecoration(color: Colors.black,
            borderRadius: BorderRadius.circular(10),
          boxShadow: [BoxShadow(color: Colors.white,blurRadius: 1)]),
            child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.search,color: Colors.grey,)),)),
        ),
     ],),
      );
      
  }
}