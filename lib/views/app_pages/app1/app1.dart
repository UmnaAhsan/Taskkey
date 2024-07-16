import 'package:flutter/material.dart';
import 'package:todo_task_app/views/app_pages/app2/app2.dart';
import 'package:todo_task_app/views/appbar/appbar.dart';
import 'package:todo_task_app/views/page1/page1.dart';

class app1 extends StatefulWidget {
  const app1({super.key});

  @override
  State<app1> createState() => _app1State();
}

class _app1State extends State<app1> {
  Color otherColor = Color.fromARGB(255, 15, 13, 49);
//   bool _switchValue = true;

//   final _lightTheme = ThemeData(brightness: Brightness.light,textTheme: 
//   TextTheme(bodyText2: TextStyle(color: Colors.black)));

// final _darkTheme = ThemeData(brightness: Brightness.dark,textTheme: 
//   TextTheme(bodyText2: TextStyle(color: Colors.white)));
  
//   var isDark = false;
//   void changeTheme(state){
//  if(state == true){
//   changeTheme(ThemeData.dark());
//  }else{
//   changeTheme(ThemeData.light());
//  }
//   }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
    //   theme: _switchValue ? _lightTheme : _darkTheme,
    //  debugShowCheckedModeBanner: false,
      home:
    Scaffold(backgroundColor: Colors.black,
     // backgroundColor:_switchValue ? Colors.white : Colors.black,
       appBar:
        PreferredSize(preferredSize: Size.fromHeight(90.0),
      child: appbar3()),
      body:
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(scrollDirection: Axis.vertical,
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Text("Let's Make a",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                    Text("Habits Together",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),

                    SizedBox(height: 10,),
                      //  Switch(value: isDark, onChanged: (state){
                      //  // print('printing $state');
                      //  setState(() {
                      //    changeTheme(state);
                      //  });
                      //  //changeTheme(state);
                      //  }),
                    SingleChildScrollView(scrollDirection: Axis.horizontal,
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Container(height: 120,width: 240,decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),boxShadow: [BoxShadow(color: Colors.white,blurRadius: 1)]),),
                          SizedBox(width: 5,),
                            Container(height: 120,width: 240,decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),boxShadow: [BoxShadow(color: Colors.white,blurRadius: 1)]),),
                             SizedBox(width: 5,),
                            Container(height: 120,width: 240,decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),boxShadow: [BoxShadow(color: Colors.white,blurRadius: 1)]),)
                      ],),
                    ),

                    SizedBox(height: 10,),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      InkWell(onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>app2()));
                      },
                        child: Text("In Process",style: TextStyle(fontSize: 18,
                          color: Colors.white,fontWeight: FontWeight.w600),),
                      ),
                      InkWell(onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>app2()));
                      },
                        child: Icon(Icons.navigate_next_outlined,color: Colors.white,size: 20,))
                    ],)
                   
              ],),
          ),
        ),
      
    ));
  }
}