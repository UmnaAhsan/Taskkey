import 'package:flutter/material.dart';
import 'package:todo_task_app/views/appbar/appbar.dart';

class addTask extends StatefulWidget {
  const addTask({super.key});

  @override
  State<addTask> createState() => _addTaskState();
}

class _addTaskState extends State<addTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
       appBar:
        PreferredSize(preferredSize: Size.fromHeight(90.0),
      child: appbar7()),
     body: Column(children: [
      SizedBox(height: 40,),
      Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Align(alignment: Alignment.topLeft,
          child: Text("Task Name",style: TextStyle(color: Colors.white),)),
      ),
      Center(
        child: Container(height: 45,width: 350,decoration: BoxDecoration
        (color: Colors.black,borderRadius: BorderRadius.circular(20),
        boxShadow: [BoxShadow(color: Colors.white,blurRadius: 2)]),
        child: TextField(),
        ),),
        SizedBox(height: 30,),
        Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Align(alignment: Alignment.topLeft,
          child: Text("Team Members",style: TextStyle(color: Colors.white),)),
      ),





          SizedBox(height: 50,),
          Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Align(alignment: Alignment.topLeft,
          child: Text("Date",style: TextStyle(color: Colors.white),)),
      ),SizedBox(height: 10,),
      Center(
        child: Container(height: 45,width: 350,decoration: BoxDecoration
        (color: Colors.black,borderRadius: BorderRadius.circular(20),
        boxShadow: [BoxShadow(color: Colors.white,blurRadius: 2)]),
        child: TextField(),
        ),),
        SizedBox(height: 15,),
        Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              Text("Start Time",style: TextStyle(color: Colors.white),),
               Text("End Time",style: TextStyle(color: Colors.white),)
            ],),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
               Center(
                    child: Container(height: 50,width: 115,decoration: BoxDecoration
                    (color: Colors.black,borderRadius: BorderRadius.circular(20),
                    boxShadow: [BoxShadow(color: Colors.white,blurRadius: 2)]),
                    child: TextField(),
                    ),),
                     Center(
                    child: Container(height: 50,width: 115,decoration: BoxDecoration
                    (color: Colors.black,borderRadius: BorderRadius.circular(20),
                    boxShadow: [BoxShadow(color: Colors.white,blurRadius: 2)]),
                    child: TextField(),
                    ),),
            ],),
          )
        ],),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.only(left:15),
          child: Align(alignment: Alignment.centerLeft,
            child: Text("Board",style: TextStyle(color: Colors.white),)),
        ),
        SizedBox(height: 20,),
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
                     Container(height: 40,width: 90,decoration: BoxDecoration
                    (color: Colors.black,borderRadius: BorderRadius.circular(10),
                    boxShadow: [BoxShadow(color: Colors.white,blurRadius: 2)]),
                    child: Center(child: Text("Urgent",style: TextStyle(color: Colors.white),)),
                    ),
                     Container(height: 40,width: 90,decoration: BoxDecoration
                    (color: Colors.black,borderRadius: BorderRadius.circular(10),
                    boxShadow: [BoxShadow(color: Colors.white,blurRadius: 2)]),
                    child: Center(child: Text("Running",style: TextStyle(color: Colors.white),)),
                    ),
                     Container(height: 40,width: 90,decoration: BoxDecoration
                    (color: Colors.black,borderRadius: BorderRadius.circular(10),
                    boxShadow: [BoxShadow(color: Colors.white,blurRadius: 2)]),
                    child: Center(child: Text("ongoing",style: TextStyle(color: Colors.white),)),
                    ),],),
        SizedBox(height: 25,),
        Container(height: 45,width:200,decoration: BoxDecoration(
          color: Colors.blue,borderRadius: BorderRadius.circular(20)),
          child: Center(child: Text("Save",style: TextStyle(color: Colors.white),)),)

     ],)
      );
  }
}