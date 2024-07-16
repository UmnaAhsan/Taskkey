import 'package:flutter/material.dart';

class profileedit extends StatefulWidget {
  const profileedit({super.key});

  @override
  State<profileedit> createState() => _profileeditState();
}

class _profileeditState extends State<profileedit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor:  Color(0xFF19173D),
      appBar: AppBar(
      backgroundColor:  Color(0xFF19173D),
        title: Center(child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Edit Profile",style: TextStyle(color: Colors.white),),
        )),
        leading:Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(height: 20,width: 20,
              decoration: BoxDecoration(color:  Color(0xFF19173D),borderRadius: BorderRadius.circular(30),
              boxShadow: [BoxShadow(color: Colors.white,blurRadius: 1)]),
              child:Center(child: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.white,size: 20,)),),
        ),actions: [Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Save",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w500,fontSize: 18),),
        )],
    ),
    body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(scrollDirection: Axis.vertical,
        child: Column(children: [
          Center(
            child: Container(height: 150,width: 150,
              child: CircleAvatar(backgroundColor: Colors.red,)),
          ),
          SizedBox(height: 13,),
          Align(alignment: Alignment.centerLeft,
            child: Text("Name",style: TextStyle(color: Colors.white,fontSize: 15),)),
           Container(height: 50,width: 350,decoration: BoxDecoration(color:  Color(0xFF19173D),boxShadow: [
              BoxShadow(color: Colors.white,)],borderRadius: BorderRadius.circular(10),),
              child: TextField(decoration: InputDecoration(border: OutlineInputBorder()),)),
                SizedBox(height: 10,),
          Align(alignment: Alignment.centerLeft,
            child: Text("Email",style: TextStyle(color: Colors.white,fontSize: 15),)),
           Container(height: 50,width: 350,decoration: BoxDecoration(color:  Color(0xFF19173D),boxShadow: [
              BoxShadow(color: Colors.white,)],borderRadius: BorderRadius.circular(10),),
              child: TextField(decoration: InputDecoration(border: OutlineInputBorder()),)),
                SizedBox(height: 10,),
          Align(alignment: Alignment.centerLeft,
            child: Text("UserName",style: TextStyle(color: Colors.white,fontSize: 15),)),
           Container(height: 50,width: 350,decoration: BoxDecoration(color:  Color(0xFF19173D),boxShadow: [
              BoxShadow(color: Colors.white,)],borderRadius: BorderRadius.circular(10),),
              child: TextField(decoration: InputDecoration(border: OutlineInputBorder()),)),
                SizedBox(height: 10,),
          Align(alignment: Alignment.centerLeft,
            child: Text("Number",style: TextStyle(color: Colors.white,fontSize: 15),)),
           Container(height: 50,width: 350,decoration: BoxDecoration(color:  Color(0xFF19173D),boxShadow: [
              BoxShadow(color: Colors.white,)],borderRadius: BorderRadius.circular(10),),
              child: TextField(decoration: InputDecoration(border: OutlineInputBorder()),))
        ],),
      ),
    ) 
    ,);
  }
}