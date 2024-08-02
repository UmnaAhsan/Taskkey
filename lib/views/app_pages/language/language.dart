import 'package:flutter/material.dart';
import 'package:todo_task_app/views/appbar/appbar.dart';

class language extends StatefulWidget {
  const language({super.key});

  @override
  State<language> createState() => _languageState();
}

class _languageState extends State<language> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      appBar:
        PreferredSize(preferredSize: Size.fromHeight(90.0),
      child: appbar12()),
      body: Padding(
         padding: const EdgeInsets.only(top: 25,left: 10,right: 10,bottom: 10),
         child: SingleChildScrollView(scrollDirection: Axis.vertical,
           child: Column(children: [
            Container(height: 50,width: 350,decoration: BoxDecoration(color:  Colors.black,boxShadow: [
              BoxShadow(color: Colors.white,blurRadius: 1)],borderRadius: BorderRadius.circular(10),),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("English",style: TextStyle(color: Colors.white,fontSize: 17),),
              ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Container(height: 20,width: 20,decoration: BoxDecoration(boxShadow: [BoxShadow(color: Colors.white,blurRadius: 1)]),
               child: CircleAvatar(backgroundColor: Colors.black,),),
             )
            ],),),
            SizedBox(height: 13,),
             Container(height: 50,width: 350,decoration: BoxDecoration(color:  Colors.black,boxShadow: [
              BoxShadow(color: Colors.white,blurRadius: 1)],borderRadius: BorderRadius.circular(10),),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Bangla",style: TextStyle(color: Colors.white,fontSize: 17),),
              ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Container(height: 20,width: 20,decoration: BoxDecoration(boxShadow: [BoxShadow(color: Colors.white,blurRadius: 1)]),
               child: CircleAvatar(backgroundColor: Colors.black,),),
             )
              
            ],),),
                SizedBox(height: 13,),
             Container(height: 50,width: 350,decoration: BoxDecoration(color:  Colors.black,boxShadow: [
              BoxShadow(color: Colors.white,blurRadius: 1)],borderRadius: BorderRadius.circular(10),),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Spanish",style: TextStyle(color: Colors.white,fontSize: 17),),
              ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Container(height: 20,width: 20,decoration: BoxDecoration(boxShadow: [BoxShadow(color: Colors.white,blurRadius: 1)]),
               child: CircleAvatar(backgroundColor: Colors.black,),),
             )
            ],),),
                SizedBox(height: 13,),
             Container(height: 50,width: 350,decoration: BoxDecoration(color:  Colors.black,boxShadow: [
              BoxShadow(color: Colors.white,blurRadius: 1)],borderRadius: BorderRadius.circular(10),),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
             Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("France",style: TextStyle(color: Colors.white,fontSize: 17),),
              ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Container(height: 20,width: 20,decoration: BoxDecoration(boxShadow: [BoxShadow(color: Colors.white,blurRadius: 1)]),
               child: CircleAvatar(backgroundColor: Colors.black,),),
             )
            ],),),
           ],),
         ),)
    );
  }
}