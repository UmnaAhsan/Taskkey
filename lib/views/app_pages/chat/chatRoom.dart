import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:todo_task_app/views/app_pages/chat/models/chatRoomModel.dart';
import 'package:todo_task_app/views/app_pages/chat/models/userModel.dart';
import 'package:todo_task_app/views/appbar/appbar.dart';

class chatroom extends StatefulWidget {
   final UserModel targetUser;
  final ChatRoomModel cchatroom;
final UserModel userModel;
  final User firebaseUser;

  const chatroom({super.key, required this.targetUser,
   required this.cchatroom, required this.userModel, required this.firebaseUser});

 
 // const chatroom({super.key});

  @override
  State<chatroom> createState() => _chatroomState();
}

class _chatroomState extends State<chatroom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
       appBar:
        PreferredSize(preferredSize: Size.fromHeight(90.0),
      child: appbar13()),
      body:  SafeArea(
        child: 
      Container(color: Colors.black,
        child: Column(children: [
          Expanded(
            child: Container(
            color: Colors.black,
          ),),
       Container(decoration: BoxDecoration(color: Colors.grey),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(children: [
            Flexible(child: TextField(
              decoration: InputDecoration(border: InputBorder.none,
                hintText: "Enter message",),
            ),),
          
              IconButton(onPressed: (){}, 
              icon: Icon(Icons.send,color: Colors.blue,))
          ],),
        ),
       )

        ],),
      )) ,
    );
  }
}