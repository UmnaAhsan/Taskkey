import 'package:flutter/material.dart';

class jointeam extends StatefulWidget {
  const jointeam({super.key});

  @override
  State<jointeam> createState() => _jointeamState();
}

class _jointeamState extends State<jointeam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
body: Column(crossAxisAlignment: CrossAxisAlignment.start,
  children: [
      Stack(children: [
            
 Container(height: 200,width: 400,
                          child: Image.asset("assets/images/Circle.png",fit: BoxFit.cover,)),
                     SingleChildScrollView(scrollDirection: Axis.vertical,
                       child: Column(
                        children: [
                         SizedBox(height: 35,),
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
                                 // Navigator.push(context, MaterialPageRoute(builder: (context)=>profileedit()));
                                },
                                  child: Container(height: 30,width: 70,decoration: BoxDecoration
                                                    (color: Colors.black,borderRadius: BorderRadius.circular(10),
                                                    boxShadow: [BoxShadow(color: Colors.blue,blurRadius: 2)]),
                                                    child: Center(child: Text("Edit",style: TextStyle(color: Colors.white),)),
                                                    ),),

                                                     SizedBox(height: 30,),

                           Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Align(alignment: Alignment.topLeft,
          child: Text("Workspace",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,
          fontSize: 20),)),
      ),SizedBox(height: 10,),
      Center(
        child: Container(height: 55,width: 350,decoration: BoxDecoration
        (color: Colors.black,borderRadius: BorderRadius.circular(10),
        boxShadow: [BoxShadow(color: Colors.white,blurRadius: 1)]),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
          Text("UI Design",style: TextStyle(color: Colors.white),),
           Container(height: 30,width: 70,decoration: BoxDecoration
             (color: Colors.black,borderRadius: BorderRadius.circular(10),
           boxShadow: [BoxShadow(color: Colors.blue,blurRadius: 2)]),
           child: Center(child: Text("Invite",style: TextStyle(color: Colors.white),)),
           ),],)),),
              
              SizedBox(height: 15,),


           Padding(
             padding: const EdgeInsets.only(left: 25,bottom: 10),
              child: Align(alignment: Alignment.bottomLeft,
              child: Text("Manage",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18))),
           ),
            
                    Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                      Column(
                        children: [
                          Container(height: 50,width: 115,decoration: BoxDecoration
                    (color: Colors.black,borderRadius: BorderRadius.circular(10),
                    boxShadow: [BoxShadow(color: Colors.white,blurRadius: 2)]),
                    child: TextField(),
                    ),SizedBox(height: 10,),
                     Container(height: 50,width: 115,decoration: BoxDecoration
                    (color: Colors.black,borderRadius: BorderRadius.circular(10),
                    boxShadow: [BoxShadow(color: Colors.white,blurRadius: 2)]),
                    child: TextField(),
                    ),
                      ],),
                      Column(children: [
                           Container(height: 50,width: 115,decoration: BoxDecoration
                    (color: Colors.black,borderRadius: BorderRadius.circular(10),
                    boxShadow: [BoxShadow(color: Colors.white,blurRadius: 2)]),
                    child: TextField(),
                    ),SizedBox(height: 10,),
                     Container(height: 50,width: 115,decoration: BoxDecoration
                    (color: Colors.black,borderRadius: BorderRadius.circular(10),
                    boxShadow: [BoxShadow(color: Colors.white,blurRadius: 2)]),
                    child: TextField(),
                    ),
                      ],)
                    ],),
                     SizedBox(height: 40,),
        Container(height: 45,width:250,decoration: BoxDecoration(
          color: Colors.blue,borderRadius: BorderRadius.circular(10)),
          child: Center(child: Text("Log Out",style: TextStyle(color: Colors.white),)),)


                       ],),)
      ],)],),
    );
  }
}
