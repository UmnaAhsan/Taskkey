import 'package:flutter/material.dart';
import 'package:todo_task_app/views/app_pages/addTask/addTask.dart';

import 'package:todo_task_app/views/app_pages/app1/app1.dart';
import 'package:todo_task_app/views/app_pages/app2/app2.dart';
import 'package:todo_task_app/views/app_pages/app3/app3.dart';
//import 'package:todo_task_app/views/app_pages/app4/app4.dart';
import 'package:todo_task_app/views/app_pages/chat/chat.dart';
import 'package:todo_task_app/views/app_pages/createTeam/createTeam.dart';
import 'package:todo_task_app/views/app_pages/profile/profile.dart';
import 'package:todo_task_app/views/profileEdit/profileEditView.dart';

class bottomNB extends StatefulWidget {
  const bottomNB({super.key});

  @override
  State<bottomNB> createState() => _bottomNBState();
}

class _bottomNBState extends State<bottomNB> {

  int currentTab = 0;
  Widget currentScreen = app1();
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
    body: PageStorage(bucket: PageStorageBucket(), child: currentScreen),
    bottomNavigationBar: BottomAppBar(
      color: Colors.black,
      child: Container(height: 20,
      child: SingleChildScrollView(scrollDirection: Axis.horizontal,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MaterialButton(
            onPressed: (){
              setState(() {
                currentScreen=app1();
                currentTab=0;
              });
            },
            child: Icon(Icons.home,color: Colors.white,),
             ),
        
              MaterialButton(
            onPressed: (){
              setState(() {
                currentScreen=app3();
                currentTab=1;
              });
            },
            child: Icon(Icons.mark_chat_read_outlined,color: Colors.white,),
             ),
        
              InkWell(onTap: (){
                //Navigator.push(context, MaterialPageRoute(builder: (context)=>app3()));
                   showBottomSheet(
                  elevation: 0,
                //isDismissible: false,
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20), topRight: Radius.circular(20),
                    )),
                  context: context, builder:(context){
                    return Container(width: double.infinity,height: 300,
                      child: SingleChildScrollView(scrollDirection: Axis.vertical,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 30,bottom: 10,right: 10,left:10),
                          child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [

                           InkWell(onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>addTask()));
                           },
                             child: Container(height: 50,width: 300,decoration: BoxDecoration(
                              color: Colors.black,borderRadius: BorderRadius.circular(10),boxShadow: [BoxShadow(
                                color: Colors.white,blurRadius: 2)]),
                              child: ListTile(
                                leading: Icon(Icons.create_sharp,color: Colors.white,),
                              title: Text("Create Task",style: TextStyle(color: Colors.white),),
                              ),),
                           ),SizedBox(height: 10,),

                              Container(height: 50,width: 300,decoration: BoxDecoration(
                            color: Colors.black,borderRadius: BorderRadius.circular(10),boxShadow: [BoxShadow(
                              color: Colors.white,blurRadius: 2)]),
                            child: ListTile(
                              leading: Icon(Icons.add_comment_outlined,color: Colors.white,),
                            title: Text("Create Project",style: TextStyle(color: Colors.white),),
                            ),),SizedBox(height: 10,),

                              InkWell(onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>team()));
                              },
                                child: Container(height: 50,width: 300,decoration: BoxDecoration(
                                                            color: Colors.black,borderRadius: BorderRadius.circular(10),boxShadow: [BoxShadow(
                                color: Colors.white,blurRadius: 2)]),
                                                            child: ListTile(
                                leading: Icon(Icons.people_sharp,color: Colors.white,),
                                                            title: Text("Create Team",style: TextStyle(color: Colors.white),),
                                                            ),),
                              ),SizedBox(height: 10,),

                              Container(height: 50,width: 300,decoration: BoxDecoration(
                            color: Colors.black,borderRadius: BorderRadius.circular(10),boxShadow: [BoxShadow(
                              color: Colors.white,blurRadius: 2)]),
                            child: ListTile(
                              leading: Icon(Icons.access_time,color: Colors.white,),
                            title: Text("Create Event",style: TextStyle(color: Colors.white),),
                            ),),SizedBox(height: 10,),
                           Container(height: 40,width: 40,decoration: BoxDecoration(
                         color: Colors.blue,borderRadius: BorderRadius.circular(30)),
                         child:  Center(child: Icon(Icons.cancel,color: Colors.white,size: 40,)),
                           ),
      
                          ],),
                        ),
                      ),
                    );
                  });

              },
                child: Container(height: 50,width: 50,decoration: BoxDecoration(
                 color: Colors.blue,borderRadius: BorderRadius.circular(30)),
                  child:  Center(child: Icon(Icons.add,color: Colors.white,)),
                             ),
              ),
              
        
        
              MaterialButton(
            onPressed: (){
              setState(() {
                 currentScreen=chat();
                currentTab=2;
              });
            },
            child: Icon(Icons.mode_comment_sharp,color: Colors.white,),
             ),
        
               MaterialButton(
            onPressed: (){
              setState(() {
                 currentScreen=profile();
                currentTab=3;
              });
            },
            child: Icon(Icons.person,color: Colors.white,),
             ),
         
        ],),
      ))
      
    ),);
  }
}