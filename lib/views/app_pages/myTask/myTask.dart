import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:todo_task_app/views/appbar/appbar.dart';

class myTask extends StatefulWidget {
  const myTask({super.key});

  @override
  State<myTask> createState() => _myTaskState();
}

class _myTaskState extends State<myTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
       appBar:
        PreferredSize(preferredSize: Size.fromHeight(90.0),
      child: appbar11()),
      body: SingleChildScrollView(scrollDirection: Axis.vertical,
        child: Column(mainAxisAlignment: MainAxisAlignment.start,
          children: [
               Center(child:CircularPercentIndicator(radius: 100,lineWidth: 25,percent: 0.4,circularStrokeCap: CircularStrokeCap.round,
               center: Column(mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text("65%",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 25),),
                   Text("Complete",style: TextStyle(color: Colors.white,fontSize: 20),)
                 ],
               ),
               backgroundColor: const Color.fromARGB(255, 130, 169, 201),
               progressColor: Color.fromARGB(255, 160, 223, 162),) ),
               SizedBox(height: 10,),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                  Container(child: Row(children: [
                    Container(height: 10,width: 10,
                      child: CircleAvatar(backgroundColor: Colors.white,)),SizedBox(width: 3,),
                    Text(" To do",style: TextStyle(color: Colors.white),)
                  ],),),
                  Container(child: Row(children: [
                    Container(height: 10,width: 10,
                      child: CircleAvatar(backgroundColor: Colors.green,)),SizedBox(width: 3,),
                    Text("In progress",style: TextStyle(color: Colors.white),)
                  ],),),
                  Container(child: Row(children: [
                    Container(height: 10,width: 10,
                      child: CircleAvatar(backgroundColor: Colors.blue,)),SizedBox(width: 3,),
                    Text("Completed",style: TextStyle(color: Colors.white),)
                  ],),)
                 ],),
               ),
               SizedBox(height: 10,),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Align(alignment: Alignment.bottomLeft,
                   child: Text("Monthly",style: TextStyle(color: Colors.white,
                   fontWeight: FontWeight.bold,fontSize: 20),),
                 ),
               ),
                    SizedBox(height: 8,),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Column(
                   children: [
                     Container(height: 60,width: 350,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                     boxShadow: [BoxShadow(color: Colors.white,blurRadius: 1)],color: Colors.black),
                       child: ListTile(
                        title: Text("Completed",style: TextStyle(color: Colors.white),),
                        subtitle: Text("19 Task now . 19 task completed",style: TextStyle(color: Colors.grey),),
                        trailing: Icon(Icons.more_horiz_rounded,color: Colors.white,),
                       ),
                     ),SizedBox(height: 15,),
                       Container(height: 60,width: 350,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                     boxShadow: [BoxShadow(color: Colors.white,blurRadius: 1)],color: Colors.black),
                       child: ListTile(
                        title: Text("Completed",style: TextStyle(color: Colors.white),),
                        subtitle: Text("19 Task now . 19 task completed",style: TextStyle(color: Colors.grey),),
                        trailing: Icon(Icons.more_horiz_rounded,color: Colors.white,),
                       ),
                     ),SizedBox(height: 15,),
                       Container(height: 60,width: 350,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                     boxShadow: [BoxShadow(color: Colors.white,blurRadius: 1)],color: Colors.black),
                       child: ListTile(
                        title: Text("Completed",style: TextStyle(color: Colors.white),),
                        subtitle: Text("19 Task now . 19 task completed",style: TextStyle(color: Colors.grey),),
                        trailing: Icon(Icons.more_horiz_rounded,color: Colors.white,),
                       ),
                     ),
                   ],
                 ),
               )
        ],),
      ),
    );
  }
}