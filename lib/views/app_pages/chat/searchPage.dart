import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todo_task_app/main.dart';
import 'package:todo_task_app/views/app_pages/chat/chat.dart';
import 'package:todo_task_app/views/app_pages/chat/chatRoom.dart';
import 'package:todo_task_app/views/app_pages/chat/models/chatRoomModel.dart';
import 'package:todo_task_app/views/app_pages/chat/models/userModel.dart';

class search extends StatefulWidget {
  final UserModel userModel;
  final User firebaseUser;
 search({Key? key, required this.userModel, required this.firebaseUser})
      : super(key: key);
TextEditingController searchController = TextEditingController();

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  TextEditingController searchController = TextEditingController();


Future<ChatRoomModel?> getChatroomModel(UserModel targetUser)async{
   QuerySnapshot snapshot  = await FirebaseFirestore.instance.collection("chatrooms")
     .where("participants.${widget.userModel.uid}",isEqualTo: true)
     .where("participants.${targetUser.uid}",isEqualTo: true).get();

     if(snapshot.docs.length > 0) {
      //Fetch the existing one
      print("Chatroom already created!");
     }
     else {
      //Create a new one
      ChatRoomModel newChatroom = ChatRoomModel(
      chatroomid: uuid.v1(),
      lastMessage: "",
      participants: {
        widget.userModel.uid.toString():true,
        targetUser.uid.toString(): true,
      }
      );
 await FirebaseFirestore.instance.collection("chatrooms").doc(newChatroom.chatroomid)
.set(newChatroom.toMap());

 print("new chat room created!");

     }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      body: SafeArea(child:Column(
        children: [
          Center(
            child: Container(height: 40,width: 300,decoration: BoxDecoration(color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  boxShadow: [BoxShadow(color: Colors.white,blurRadius: 1)]),
                    child: TextField(controller: searchController,
                      decoration: InputDecoration(border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.search,color: Colors.grey,)),)),
          ),
          ElevatedButton(onPressed: (){
               setState(() {
                 
               });
          }, child: Text("search")),
          SizedBox(height: 20,),
        
        StreamBuilder(
                stream: FirebaseFirestore.instance
                    .collection("users") .where("email", isEqualTo: searchController.text)
                  //  .where("email", isNotEqualTo: widget.userModel.email)
                    .snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.active) {
                    if (snapshot.hasData) {
                      QuerySnapshot dataSnapshot =
                          snapshot.data as QuerySnapshot;
                      if (dataSnapshot.docs.length > 0) {
                        Map<String, dynamic> userMap =
                            dataSnapshot.docs[0].data() as Map<String, dynamic>;
                        UserModel searchedUser = UserModel.fromMap(userMap);
                        return ListTile(
                          onTap: ()async{
                          ChatRoomModel? chatRoomModel = await
                           getChatroomModel(searchedUser);
                            // Navigator.pop(context);
                            // Navigator.push(context, MaterialPageRoute(builder: (context)=>
                            // chatroom(
                            //   targetUser: searchedUser,
                            //    cchatroom: cchatroom, userModel: widget.userModel,
                            //     firebaseUser:widget.firebaseUser)));
                          },
                          leading: CircleAvatar(backgroundColor: Colors.grey[500],
                            backgroundImage: NetworkImage(searchedUser.profilepic!),),
                          title: Text(searchedUser.fullname!),
                          subtitle: Text(searchedUser.email!,style: TextStyle(color: Colors.white),),
                          trailing: Icon(Icons.keyboard_arrow_right),
                        );
                      } else {
                        return Text("No results found!");
                      }
                    } else if (snapshot.hasError) {
                      return Text("An error occured!");
                    } else {
                      return Text("No results found!");
                    }
                  } else {
                    return CircularProgressIndicator();
                  }
                },
              ),

        ],
      ), 
      ),
    );
  }
}