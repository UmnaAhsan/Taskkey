import 'package:flutter/material.dart';
import 'package:todo_task_app/views/app_pages/20sun.dart/20sun.dart';
import 'package:todo_task_app/views/app_pages/calender/calender.dart';
import 'package:todo_task_app/views/appbar/appbar.dart';

class app2 extends StatefulWidget {
  const app2({super.key});

  @override
  State<app2> createState() => _app2State();
}
  Color otherColor = Colors.black;
class _app2State extends State<app2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor:Colors.black ,
        appBar:
        PreferredSize(preferredSize: Size.fromHeight(90.0),
      child: appbar4()),
      body: SingleChildScrollView(scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(children: [
              Container(height: 200,width: 400,
                        child: Image.asset("assets/images/Circle.png",fit: BoxFit.cover,)),
                     //   SizedBox(height: 50,),
                      Column(
                        children: [    SizedBox(height: 65,),
                          Row(children: [
                              Text("Octuber,20",style: TextStyle(color: Colors.white,fontWeight:
                               FontWeight.bold,fontSize: 25),),
                              Spacer(),
                               InkWell(onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>calender()));
                               },
                                 child: Container(height: 30,width: 30,
                                        decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(30),
                                        boxShadow: [BoxShadow(color: Colors.white,blurRadius: 1)]),
                                        child:Center(child: Icon(Icons.calendar_month,color: Colors.white,size: 15,)),),
                               ),
                            ],),
                            Align(alignment: Alignment.topLeft,
                              child: Text("15 Task todat",style: TextStyle(color: Colors.grey),))
                        ],),
                        ]),
          
        
                    SingleChildScrollView(scrollDirection: Axis.horizontal,
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                        Container(height: 100,width: 60,decoration: BoxDecoration(color: Colors.black,
                        borderRadius:BorderRadius.circular(10),boxShadow: [BoxShadow(color: Colors.white,blurRadius: 1)] ),
                        child: Column(mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                          Text("19",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 25),),
                          Text("Sat",style: TextStyle(color: Colors.white),)
                        ],),),SizedBox(width: 15,),
                        InkWell(onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> sun()));
                        },
                          child: Container(height: 100,width: 60,decoration: BoxDecoration(
                            color: Colors.black,
                          borderRadius:BorderRadius.circular(10),boxShadow: [BoxShadow(color: Colors.white,blurRadius: 1)] ),
                          child: Column(mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                            Text("20",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 25),),
                            Text("Sun",style: TextStyle(color: Colors.white),)
                          ],),),
                        ),SizedBox(width: 15,),
                        Container(height: 100,width: 60,decoration: BoxDecoration(color: Colors.black,
                        borderRadius:BorderRadius.circular(10),boxShadow: [BoxShadow(color: Colors.white,blurRadius: 1)] ),
                        child: Column(mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                          Text("21",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 25),),
                          Text("Mon",style: TextStyle(color: Colors.white),)
                        ],),),SizedBox(width: 15,),
                        Container(height: 100,width: 60,decoration: BoxDecoration(color: Colors.black,
                        borderRadius:BorderRadius.circular(10),boxShadow: [BoxShadow(color: Colors.white,blurRadius: 1)] ),
                        child: Column(mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                          Text("22",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 25),),
                          Text("Tues",style: TextStyle(color: Colors.white),)
                        ],),),SizedBox(width: 15,),
                        Container(height: 100,width: 60,decoration: BoxDecoration(color: Colors.black,
                    borderRadius:BorderRadius.circular(10),boxShadow: [BoxShadow(color: Colors.white,blurRadius: 1)] ),
                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                      Text("23",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 25),),
                      Text("Wed",style: TextStyle(color: Colors.white),)
                    ],),),SizedBox(width: 15,),
                    Container(height: 100,width: 60,decoration: BoxDecoration(color: Colors.black,
                    borderRadius:BorderRadius.circular(10),boxShadow: [BoxShadow(color: Colors.white,blurRadius: 1)] ),
                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                      Text("24",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 25),),
                      Text("Thurs",style: TextStyle(color: Colors.white),)
                    ],),),SizedBox(width: 15,),
                      ],),
                    )
          ]),
      )
    );
  }
}