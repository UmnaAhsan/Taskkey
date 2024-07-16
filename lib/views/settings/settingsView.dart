import 'package:flutter/material.dart';

class settings extends StatefulWidget {
  const settings({super.key});

  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      appBar: AppBar(backgroundColor:  Colors.black,
        title: Center(child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Settings",style: TextStyle(color: Colors.white),),
        )),
        leading:Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(height: 20,width: 20,
              decoration: BoxDecoration(color:  Color(0xFF19173D),borderRadius: BorderRadius.circular(30),
              boxShadow: [BoxShadow(color: Colors.white,blurRadius: 1)]),
              child:Center(child: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.white,size: 20,)),),
        ),
        ),
       body: Padding(
         padding: const EdgeInsets.only(top: 25,left: 10,right: 10,bottom: 10),
         child: SingleChildScrollView(scrollDirection: Axis.vertical,
           child: Column(children: [
            Container(height: 50,width: 350,decoration: BoxDecoration(color:  Color(0xFF19173D),boxShadow: [
              BoxShadow(color: Colors.white,blurRadius: 1)],borderRadius: BorderRadius.circular(10),),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              Text("Premission",style: TextStyle(color: Colors.white),),
              //Switch(value: , onChanged: onChanged)
            ],),),
            SizedBox(height: 13,),
             Container(height: 50,width: 350,decoration: BoxDecoration(color:  Color(0xFF19173D),boxShadow: [
              BoxShadow(color: Colors.white,blurRadius: 1)],borderRadius: BorderRadius.circular(10),),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              Text("Premission",style: TextStyle(color: Colors.white),),
              //Switch(value: , onChanged: onChanged)
            ],),),
                SizedBox(height: 13,),
             Container(height: 50,width: 350,decoration: BoxDecoration(color:  Color(0xFF19173D),boxShadow: [
              BoxShadow(color: Colors.white,blurRadius: 1)],borderRadius: BorderRadius.circular(10),),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              Text("Premission",style: TextStyle(color: Colors.white),),
              //Switch(value: , onChanged: onChanged)
            ],),),
                SizedBox(height: 13,),
             Container(height: 50,width: 350,decoration: BoxDecoration(color:  Color(0xFF19173D),boxShadow: [
              BoxShadow(color: Colors.white,blurRadius: 1)],borderRadius: BorderRadius.circular(10),),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              Text("Premission",style: TextStyle(color: Colors.white),),
              //Switch(value: , onChanged: onChanged)
            ],),),
                SizedBox(height: 13,),
             Container(height: 50,width: 350,decoration: BoxDecoration(color:  Color(0xFF19173D),boxShadow: [
              BoxShadow(color: Colors.white,blurRadius: 1)],borderRadius: BorderRadius.circular(10),),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              Text("Premission",style: TextStyle(color: Colors.white),),
              //Switch(value: , onChanged: onChanged)
            ],),),
                SizedBox(height: 13,),
             Container(height: 50,width: 350,decoration: BoxDecoration(color:  Color(0xFF19173D),boxShadow: [
              BoxShadow(color: Colors.white,blurRadius: 1)],borderRadius: BorderRadius.circular(10),),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              Text("Premission",style: TextStyle(color: Colors.white),),
              //Switch(value: , onChanged: onChanged)
            ],),),
            
           ],),
         ),
       )
    );
  }
}