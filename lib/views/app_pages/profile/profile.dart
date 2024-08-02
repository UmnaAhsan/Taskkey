import 'dart:html';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_task_app/views/app_pages/chat/firebaseHelper.dart';
import 'package:todo_task_app/views/app_pages/chat/models/userModel.dart';
import 'package:todo_task_app/views/app_pages/join_team/jointeam.dart';
import 'package:todo_task_app/views/app_pages/myTask/myTask.dart';
import 'package:todo_task_app/views/appbar/appbar.dart';
import 'package:todo_task_app/views/profileEdit/profileEditView.dart';
import 'package:todo_task_app/views/settings/settingsView.dart';
import 'package:todo_task_app/views/settings/themeChanger.dart';

class profile extends StatefulWidget {
 

  //const profile({super.key, required this.userModel, required this.firebaseUser});
 // const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
     final themeChanger = Provider.of <ThemeChanger>(context);
    return Scaffold(backgroundColor: Colors.black,
       appBar:
        PreferredSize(preferredSize: Size.fromHeight(90.0),
      child: appbar10()),
      body: SingleChildScrollView(scrollDirection: Axis.vertical,
        child: Column(children: [
          Stack(children: [
             Container(height: 300,width: 400,
                          child: Image.asset("assets/images/Circle.png",fit: BoxFit.cover,)),
                          SingleChildScrollView(scrollDirection: Axis.vertical,
                            child: Column(children: [
                              SizedBox(height: 15,),
                              Center(
                                child: Container(height: 120,width: 120,decoration: BoxDecoration(shape: BoxShape.circle,
                                color: Colors.black,
                                  boxShadow: [BoxShadow(color: Colors.blue,blurRadius: 2)]),),
                              ),
                              Text("Upload logo file",style: TextStyle(color: 
                              Colors.white,fontSize: 18,fontWeight: FontWeight.w700),),
                              Text("Your logo will publish always",style: TextStyle(color: Colors.grey),),
                              SizedBox(height: 10,),

                                InkWell(onTap: (){
                                 Navigator.push(context, MaterialPageRoute(builder: (context)=>
                               profileedit(userModel: userModel, firebaseUser: firebaseUser)
                                 ))
                                },
                                  child: Container(height: 30,width: 70,decoration: BoxDecoration
                                                    (color: Colors.black,borderRadius: BorderRadius.circular(10),
                                                    boxShadow: [BoxShadow(color: Colors.blue,blurRadius: 2)]),
                                                    child: Center(child: Text("Edit",style: TextStyle(color: Colors.white),)),
                                                    ),),
                                                  SizedBox(height: 6,),

                                                  Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                    children: [
                                                    Column(children: [
                              Icon(Icons.access_time_outlined,color: Colors.white,),
                               Text("5",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold
                            ,fontSize: 15,
                            ),),
                            Text("On Going",style: TextStyle(color: Colors.grey),)
                                                    ],),
                                                     Column(children: [
                            Icon(Icons.check_circle_outline_rounded,color: Colors.white,),
                            Text("25",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold
                            ,fontSize: 15,
                            ),),
                             Text("Total Complete",style: TextStyle(color: Colors.grey),)
                                                    ],)
                                                  ],),
                                                  SizedBox(height: 10,),
                                                  Container(height: 50,width: 350,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                                                  color: Colors.black, boxShadow: [BoxShadow(color: Colors.white,blurRadius: 1),]),
                                                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                    children: [
                                                    Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("My Project",style: TextStyle(color: Colors.white),),
                                                    ),Spacer(),Icon(Icons.arrow_forward_ios_sharp,color: Colors.white,size: 15,)
                                                  ],),),SizedBox(height: 7,),

                                                   InkWell(onTap: (){
                                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>jointeam()));
                                                   },
                                                     child: Container(height: 50,width: 350,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                                                                                                       color: Colors.black, boxShadow: [BoxShadow(color: Colors.white,blurRadius: 1),]),
                                                                                                       child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                      children: [
                                                      Padding(
                                                                                 padding: const EdgeInsets.all(8.0),
                                                                                 child: Text("Join Team",style: TextStyle(color: Colors.white),),
                                                      ),Spacer(),Icon(Icons.arrow_forward_ios_sharp,color: Colors.white,size: 15,)
                                                                                                       ],),),
                                                   ),SizedBox(height: 7,),

                                                   InkWell(onTap: (){
                                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>settings()));
                                                   },
                                                     child: Container(height: 50,width: 350,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                                                                                                       color: Colors.black, boxShadow: [BoxShadow(color: Colors.white,blurRadius: 1),]),
                                                                                                       child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                      children: [
                                                      Padding(
                                                                                 padding: const EdgeInsets.all(8.0),
                                                                                 child: Text("Settings",style: TextStyle(color: Colors.white),),
                                                      ),Spacer(),Icon(Icons.arrow_forward_ios_sharp,color: Colors.white,size: 15,)
                                                                                                       ],),),
                                                   ),SizedBox(height: 7,),

                                                   InkWell(onTap: (){
                                                   Navigator.push(context, MaterialPageRoute(builder: (context)=>myTask()));
                                                   },
                                                     child: Container(height: 50,width: 350,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                                                                                                       color: Colors.black, boxShadow: [BoxShadow(color: Colors.white,blurRadius: 1),]),
                                                                                                       child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                      children: [
                                                      Padding(
                                                                                 padding: const EdgeInsets.all(8.0),
                                                                                 child: Text("My Task",style: TextStyle(color: Colors.white),),
                                                      ),Spacer(),Icon(Icons.arrow_forward_ios_sharp,color: Colors.white,size: 15,)
                                                                                                       ],),),
                                                   ),SizedBox(height: 7,),
                                    
                                      ],),
                          )])
        ],),
      ),
      );
  }
}