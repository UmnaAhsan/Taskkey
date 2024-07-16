import 'package:flutter/material.dart';
import 'package:todo_task_app/views/appbar/appbar.dart';

class app3 extends StatefulWidget {
  const app3({super.key});

  @override
  State<app3> createState() => _app3State();
}

class _app3State extends State<app3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      appBar:
        PreferredSize(preferredSize: Size.fromHeight(90.0),
      child: appbar6()),
      body: Column(children: [
        SizedBox(height: 40,),
        Center(
          child: Container(height: 40,width: 300,decoration: BoxDecoration(color: Colors.black,
            borderRadius: BorderRadius.circular(10),
          boxShadow: [BoxShadow(color: Colors.white,blurRadius: 1)]),
            child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.search,color: Colors.grey,)),)),
        ),SizedBox(height: 18,),
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
          Container(height: 23,width: 65,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
          color: Colors.black,
          boxShadow: [BoxShadow(color: Colors.blue,blurRadius: 4)]),
            child: Center(child: Text("Favourite",style: TextStyle(color: Colors.white),))),
          Text("Recents",style: TextStyle(color: Colors.white),),
          Text("All",style: TextStyle(color: Colors.white),),
          Icon(Icons.center_focus_weak_sharp,color: Colors.white,)
        ],)
      ],),
      );
  }
}