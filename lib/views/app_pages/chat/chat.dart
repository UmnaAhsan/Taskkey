import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:todo_task_app/views/app_pages/chat/models/userModel.dart';
import 'package:todo_task_app/views/app_pages/chat/searchPage.dart';
import 'package:todo_task_app/views/appbar/appbar.dart';

class chat extends StatefulWidget {
   final UserModel userModel;
  final User firebaseUser;
  const chat({Key? key, required this.userModel, required this.firebaseUser});
  //     : super(key: key);

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
          child: InkWell(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: ((context) =>
            //search(userModel: widget.userModel, firebaseUser:widget. firebaseUser)
           search(userModel: widget.userModel, firebaseUser:widget. firebaseUser) )));
          },
            child: Container(height: 30,width: 100,decoration: BoxDecoration(color: Colors.black,
            
              borderRadius: BorderRadius.circular(10),
            boxShadow: [BoxShadow(color: Colors.white,blurRadius: 1)]),
              child: Center(child: Text("Search",style: TextStyle(color: Colors.white),))
             ) ))
     ],)
      );
      
  }
}