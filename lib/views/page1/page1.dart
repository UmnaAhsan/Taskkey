import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:todo_task_app/views/app_pages/chat/models/userModel.dart';
import 'package:todo_task_app/views/onboarding_screen/onboarding.dart';

class page1 extends StatefulWidget {
  
//       : super(key: key);
 // const page1({super.key});

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(height: 350,width: 400,
          child: Image.asset('assets/images/image5.png')),
          SizedBox(height: 400,),
         Align(alignment: Alignment.bottomCenter,
          child: Container(height: 350,width: 400,decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),color: Colors.black,
           // image: DecorationImage(image: AssetImage('assets/images/Logo.png'
          //  ))
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 35),
              child: Column(children: [
                Image.asset('assets/images/Logo.png'),SizedBox(height: 8,),
                     Text("Bulding Better",style: TextStyle(
                      color: Colors.blue,fontSize: 33,fontWeight: FontWeight.w700),),
                       Text("Workplaces",style: TextStyle(
                      color: Colors.blue,fontSize: 33,fontWeight: FontWeight.w700),),
                      SizedBox(height: 6,),
                      Text("Create a unique emotional story that",style: TextStyle(color: Colors.grey)),
                       Text("describes better than words",style: TextStyle(color: Colors.grey),),
                        SizedBox(height: 15,),
                        InkWell(onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>
                          //onboarding(userModel: userModel, firebaseUser: firebaseUser)
                        //  onboarding(userModel: widget.userModel, firebaseUser:widget. firebaseUser)
                        onboarding()));
                        },
                          child: Container(height: 50,width: 300,decoration: BoxDecoration(color: Colors.blue,
                            borderRadius: BorderRadius.circular(10),boxShadow: 
                            [BoxShadow(color: Colors.white,blurRadius: 3)],
                            ),child: Center(child: 
                            Text("Get Started",style: TextStyle(fontSize: 18,
                              color: Colors.white),)),),
                        )
              ],),
            ),
            ))
      ],),
    );
  }
}