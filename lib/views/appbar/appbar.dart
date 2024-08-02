import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:todo_task_app/views/app_pages/addTask/addTask.dart';
import 'package:todo_task_app/views/app_pages/chat/chat.dart';
import 'package:todo_task_app/views/app_pages/chat/models/userModel.dart';
import 'package:todo_task_app/views/app_pages/createTeam/createTeam.dart';
//import 'package:todo_task_app/views/app_pages/bottomSS/bottomSS.dart';

class appbar extends StatefulWidget {
  
 // const appbar({super.key});

  @override
  State<appbar> createState() => _appbarState();
}

class _appbarState extends State<appbar> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(20),
      child: Row(children: [
           Container(height: 30,width: 30,
          decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(30),
          boxShadow: [BoxShadow(color: Colors.white,blurRadius: 1)]),
          child:Center(child: InkWell(onTap: (){Navigator.pop(context);},
            child: Icon(Icons.arrow_back_ios_outlined,color: Colors.white,size: 15,))),),
          SizedBox(width: 40,),
           Center(child: Text("Sign In",style: TextStyle(
            color: Colors.white,fontSize: 20,fontWeight: FontWeight.w700))),
        ],),
    );
   
  }
}

//import 'package:flutter/material.dart';

class appbar2 extends StatefulWidget {
  const appbar2({super.key});

  @override
  State<appbar2> createState() => _appbar2State();
}

class _appbar2State extends State<appbar2> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(20),
      child: Row(children: [
           Container(height: 30,width: 30,
          decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(30),
          boxShadow: [BoxShadow(color: Colors.white,blurRadius: 1)]),
          child:Center(child: Icon(Icons.arrow_back_ios_outlined,color: Colors.white,size: 15,)),),
          SizedBox(width: 40,),
           Center(child: Text("Sign Up",style: TextStyle(
            color: Colors.white,fontSize: 20,fontWeight: FontWeight.w700))),
        ],),
    );
   
  }
}

class appbar3 extends StatefulWidget {
  const appbar3({super.key});

  @override
  State<appbar3> createState() => _appbar3State();
}

class _appbar3State extends State<appbar3> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
             Container(height: 30,width: 30,
            decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(30),
            boxShadow: [BoxShadow(color: Colors.white,blurRadius: 1)]),
            child:Center(child: Icon(Icons.window_outlined,color: Colors.white,size: 15,)),),
            SizedBox(width: 110,),
             Text("Friday, 26",style: TextStyle(
              color: Colors.white,fontSize: 20,fontWeight: FontWeight.w700)),
               SizedBox(width: 95,),
              Container(height: 30,width: 30,
            decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(30),
            boxShadow: [BoxShadow(color: Colors.white,blurRadius: 1)]),
            child:Center(child: Icon(Icons.notifications_none_rounded,color: Colors.white,size: 15,)),),
          ],),
      ),
    );
   
  }
}




class appbar4 extends StatefulWidget {
  const appbar4({super.key});

  @override
  State<appbar4> createState() => _appbar4State();
}

class _appbar4State extends State<appbar4> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
             Container(height: 30,width: 30,
            decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(30),
            boxShadow: [BoxShadow(color: Colors.white,blurRadius: 1)]),
            child:Center(child: InkWell(onTap: (){Navigator.pop(context);},
              child: Icon(Icons.arrow_back_ios_new,color: Colors.white,size: 15,))),),
            SizedBox(width: 90,),
             Text("Today Task",style: TextStyle(
              color: Colors.white,fontSize: 20,fontWeight: FontWeight.w700)),
               SizedBox(width: 95,),
              Container(height: 30,width: 30,
            decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(30),
            boxShadow: [BoxShadow(color: Colors.white,blurRadius: 1)]),
            child:Center(child: Icon(Icons.mode_edit_outline_outlined,color: Colors.white,size: 15,)),),
          ],),
      ),
    );
   
  }
}

class appbar5 extends StatefulWidget {
  const appbar5({super.key});

  @override
  State<appbar5> createState() => _appbar5State();
}

class _appbar5State extends State<appbar5> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
             Container(height: 30,width: 30,
            decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(30),
            boxShadow: [BoxShadow(color: Colors.white,blurRadius: 1)]),
            child:Center(child: InkWell(onTap: (){
              Navigator.pop(context);
            },
              child: Icon(Icons.arrow_back_ios_new,color: Colors.white,size: 15,))),),
            SizedBox(width: 90,),
             Text("Monthly Task",style: TextStyle(
              color: Colors.white,fontSize: 20,fontWeight: FontWeight.w700)),
               SizedBox(width: 80,),
              Container(height: 30,width: 30,
            decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(30),
            boxShadow: [BoxShadow(color: Colors.white,blurRadius: 1)]),
            child:Center(child: Icon(Icons.mode_edit_outline_outlined,color: Colors.white,size: 15,)),),
          ],),
      ),
    );
   
  }
}

class appbar6 extends StatefulWidget {
  const appbar6({super.key});

  @override
  State<appbar6> createState() => _appbar6State();
}

class _appbar6State extends State<appbar6> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
             Container(height: 30,width: 30,
            decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(30),
            boxShadow: [BoxShadow(color: Colors.white,blurRadius: 1)]),
            child:Center(child: InkWell(onTap: (){
                 Navigator.pop(context);
            },
              child: Icon(Icons.arrow_back_ios_new,color: Colors.white,size: 15,))),),
            SizedBox(width: 90,),
             Text("Project",style: TextStyle(
              color: Colors.white,fontSize: 20,fontWeight: FontWeight.w700)),
               SizedBox(width: 137,),
              InkWell(onTap: (){
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
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> addTask()));
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
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> team()));
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
                           InkWell(onTap: (){
                            Navigator.pop(context);
                           },
                             child: Container(height: 40,width: 40,decoration: BoxDecoration(
                                                      color: Colors.blue,borderRadius: BorderRadius.circular(30)),
                                                      child:  Center(child: Icon(Icons.cancel,color: Colors.white,size: 40,)),
                             ),
                           ),
      
                          ],),
                        ),
                      ),
                    );
                  });
              },
                child: Container(height: 30,width: 30,
                            decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(30),
                            boxShadow: [BoxShadow(color: Colors.white,blurRadius: 1)]),
                            child:Center(child: Icon(Icons.add,color: Colors.white,size: 15,)),),
              ),
          ],),
      ),
    );
   
  }
}

class appbar7 extends StatefulWidget {
  const appbar7({super.key});

  @override
  State<appbar7> createState() => _appbar7State();
}

class _appbar7State extends State<appbar7> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
             Container(height: 30,width: 30,
            decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(30),
            boxShadow: [BoxShadow(color: Colors.white,blurRadius: 1)]),
            child:Center(child: InkWell(onTap: (){Navigator.pop(context);},
              child: Icon(Icons.arrow_back_ios_new,color: Colors.white,size: 15,))),),
            SizedBox(width: 90,),
             Text("Add Task",style: TextStyle(
              color: Colors.white,fontSize: 20,fontWeight: FontWeight.w700)),
               SizedBox(width: 95,),
          ],),
      ),
    );
   
  }
}


class appbar8 extends StatefulWidget {
  const appbar8({super.key});

  @override
  State<appbar8> createState() => _appbar8State();
}

class _appbar8State extends State<appbar8> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
             Container(height: 30,width: 30,
            decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(30),
            boxShadow: [BoxShadow(color: Colors.white,blurRadius: 1)]),
            child:Center(child: InkWell(onTap: (){Navigator.pop(context);},
              child: Icon(Icons.arrow_back_ios_new,color: Colors.white,size: 15,))),),
            SizedBox(width: 90,),
             Text("Create Team",style: TextStyle(
              color: Colors.white,fontSize: 20,fontWeight: FontWeight.w700)),
               SizedBox(width: 95,),
          ],),
      ),
    );
   
  }
}



class appbar9 extends StatefulWidget {
  const appbar9({super.key});

  @override
  State<appbar9> createState() => _appbar9State();
}

class _appbar9State extends State<appbar9> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(2),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
           Container(height: 30,width: 30,
          decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(30),
          boxShadow: [BoxShadow(color: Colors.white,blurRadius: 1)]),
          child:Center(child: InkWell(onTap: (){Navigator.pop(context);},
            child: Icon(Icons.arrow_back_ios_new,color: Colors.white,size: 15,))),),
          SizedBox(width: 120,),
           Center(
             child: Text("Chat",style: TextStyle(
              color: Colors.white,fontSize: 20,fontWeight: FontWeight.w700)),
           ),
             SizedBox(width: 140,),
                 Container(height: 30,width: 30,
          decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(30),
          boxShadow: [BoxShadow(color: Colors.white,blurRadius: 1)]),
          child:Center(child: InkWell(onTap: (){Navigator.pop(context);},
            child: Icon(Icons.add,color: Colors.white,size: 15,))),),
        ],),
    );
   
  }
}


class appbar10 extends StatefulWidget {
  const appbar10({super.key});

  @override
  State<appbar10> createState() => _appbar10State();
}

class _appbar10State extends State<appbar10> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(2),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
           Container(height: 30,width: 30,
          decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(30),
          boxShadow: [BoxShadow(color: Colors.white,blurRadius: 1)]),
          child:Center(child: InkWell(onTap: (){Navigator.pop(context);},
            child: Icon(Icons.arrow_back_ios_new,color: Colors.white,size: 15,))),),
          SizedBox(width: 100,),
           Center(
             child: Text("Profile",style: TextStyle(
              color: Colors.white,fontSize: 20,fontWeight: FontWeight.w700)),
           ),
            SizedBox(width: 150,),
        ],),
    );
   
  }
}

class appbar11 extends StatefulWidget {
  const appbar11({super.key});

  @override
  State<appbar11> createState() => _appbar11State();
}

class _appbar11State extends State<appbar11> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(2),
      child: SingleChildScrollView(scrollDirection: Axis.horizontal,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
             Container(height: 30,width: 30,
            decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(30),
            boxShadow: [BoxShadow(color: Colors.white,blurRadius: 1)]),
            child:Center(child: InkWell(onTap: (){Navigator.pop(context);},
              child: Icon(Icons.arrow_back_ios_new,color: Colors.white,size: 15,))),),
            SizedBox(width: 100,),
             Center(
               child: Text("Task Status",style: TextStyle(
                color: Colors.white,fontSize: 20,fontWeight: FontWeight.w700)),
             ),
              SizedBox(width: 100,),
             // Icon(Icons.multiple_stop_sharp,color: Colors.white
               Container(height: 30,width: 30,
          decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(30),
          boxShadow: [BoxShadow(color: Colors.white,blurRadius: 1)]),
          child:Center(child: InkWell(onTap: (){Navigator.pop(context);},
            child: Icon(Icons.multiple_stop_sharp,color: Colors.white,size: 15,))),),
              
          ],),
      ),
    );
   
  }
}


class appbar12 extends StatefulWidget {
  const appbar12({super.key});

  @override
  State<appbar12> createState() => _appbar12State();
}

class _appbar12State extends State<appbar12> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(2),
      child: SingleChildScrollView(scrollDirection: Axis.horizontal,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
             Container(height: 30,width: 30,
            decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(30),
            boxShadow: [BoxShadow(color: Colors.white,blurRadius: 1)]),
            child:Center(child: InkWell(onTap: (){Navigator.pop(context);},
              child: Icon(Icons.arrow_back_ios_new,color: Colors.white,size: 15,))),),
            SizedBox(width: 100,),
             Center(
               child: Text("Language",style: TextStyle(
                color: Colors.white,fontSize: 20,fontWeight: FontWeight.w700)),
             ),
            
              
          ],),
      ),
    );
   
  }
}


class appbar13 extends StatefulWidget {
  const appbar13({super.key});

  @override
  State<appbar13> createState() => _appbar13State();
}

class _appbar13State extends State<appbar13> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(2),
      child: SingleChildScrollView(scrollDirection: Axis.horizontal,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
             Container(height: 30,width: 30,
            decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(30),
            boxShadow: [BoxShadow(color: Colors.white,blurRadius: 1)]),
            child:Center(child: InkWell(onTap: (){
           //   Navigator.push(context,MaterialPageRoute(builder: (context)=>
            //chat()
            //));
            },
              child: Icon(Icons.arrow_back_ios_new,color: Colors.white,size: 15,))),),
            SizedBox(width: 100,),
             Center(
               child: Text("Chat",style: TextStyle(
                color: Colors.white,fontSize: 20,fontWeight: FontWeight.w700)),
             ),
            
              
          ],),
      ),
    );
   
  }
}