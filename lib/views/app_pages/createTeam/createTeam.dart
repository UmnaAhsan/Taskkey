import 'package:flutter/material.dart';
import 'package:todo_task_app/views/appbar/appbar.dart';

class team extends StatefulWidget {
  const team({super.key});

  @override
  State<team> createState() => _teamState();
}

class _teamState extends State<team> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
       appBar:
        PreferredSize(preferredSize: Size.fromHeight(90.0),
      child: appbar8()),
      body:Column(children: [
        Stack(children: [
            Container(height: 200,width: 400,
                        child: Image.asset("assets/images/Circle.png",fit: BoxFit.cover,)),
                        Column(children: [
                          SizedBox(height: 25,),
                          Center(
                            child: Container(height: 120,width: 120,decoration: BoxDecoration(shape: BoxShape.circle,
                            color: Colors.black,
                              boxShadow: [BoxShadow(color: Colors.blue,blurRadius: 2)]),),
                          ),
                          Text("Upload logo file",style: TextStyle(color: 
                          Colors.white,fontSize: 20,fontWeight: FontWeight.w700),),
                          Text("Your logo will publish always",style: TextStyle(color: Colors.grey),),
                          SizedBox(height: 15,),

                           Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Align(alignment: Alignment.topLeft,
          child: Text("Team name",style: TextStyle(color: Colors.white),)),
      ),SizedBox(height: 10,),
      Center(
        child: Container(height: 45,width: 350,decoration: BoxDecoration
        (color: Colors.black,borderRadius: BorderRadius.circular(20),
        boxShadow: [BoxShadow(color: Colors.white,blurRadius: 2)]),
        child: TextField(),
        ),),

        SizedBox(height: 15,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(alignment: Alignment.centerLeft,
            child: Text("Team members",style: TextStyle(color: Colors.white),)),
        ),
        SizedBox(height: 30,),
        Container(width: 300,
          child: TextField()),
          SizedBox(height: 15,),

                 SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.only(left:15),
          child: Align(alignment: Alignment.centerLeft,
            child: Text("Board",style: TextStyle(color: Colors.white),)),
        ),
        SizedBox(height: 17,),
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
        SizedBox(height: 20,),
        Container(height: 45,width:200,decoration: BoxDecoration(
          color: Colors.blue,borderRadius: BorderRadius.circular(20)),
          child: Center(child: Text("Save",style: TextStyle(color: Colors.white),)),)

                        ],)
        ],)
      ],)
    );
  }
}