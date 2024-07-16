import 'package:flutter/material.dart';
import 'package:todo_task_app/views/appbar/appbar.dart';
import 'package:todo_task_app/views/signup/signup.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(backgroundColor: Colors.black,
        appBar: PreferredSize(preferredSize: Size.fromHeight(90.0),
      child: appbar()),
        
        body: Padding(
          padding: const EdgeInsets.all(30),
          child: SingleChildScrollView(scrollDirection: Axis.vertical,
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text("Welcome Back",style: TextStyle(
                color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                SizedBox(height: 8,),
                  Text("Please enter your email address" ,style: TextStyle(color: Colors.grey,fontSize: 14),),
                 Text( "and password for login",style: TextStyle(color: Colors.grey,fontSize: 14),),
                 SizedBox(height: 20,),
                 Container(height: 35,width: 340,decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                 ),
                  child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),hintText: 'Enter Your Email'),)),
                     SizedBox(height: 12,),
                 Container(height: 35,width: 340,decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
           ),
                  child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),hintText: 'Enter Your Password',),)),
                    Align(alignment: Alignment.bottomRight,
                      child: Text("Forget Password",style: TextStyle(color: Colors.black),)),
                      SizedBox(height: 15,),
                      Container(height: 35,width: 340,decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                 color: const Color.fromARGB(255, 8, 43, 71),boxShadow: [BoxShadow(color: Colors.blue,blurRadius: 5)]),
                  child: Center(child: Text("Sign In",style: TextStyle(color: Colors.white),))),
                  SizedBox(height: 15,),
                  Center(child: Text("SignIn With",style: TextStyle(color: Colors.grey),)),
                  SizedBox(height: 10,),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Container(height: 40,width: 40,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                    color: Colors.black,
                    boxShadow: [BoxShadow(color: Colors.white,blurRadius: 1)]),
                    child: Center(child: Icon(Icons.apple,color: Colors.white,)),),
                    SizedBox(width: 25,),
                      Container(height: 40,width: 40,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                    color: Colors.black,
                    boxShadow: [BoxShadow(color: Colors.white,blurRadius: 1)]),
                    child: Center(child: Icon(Icons.apple,color: Colors.white,)),),
                  ],),
                  SizedBox(height: 10,),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Not Register Yet",style: TextStyle(color: Colors.grey),),
                      InkWell(onTap: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context) => signup()));
                      },
                        child: Text("Sign Up",style: TextStyle(color: Colors.blue),))
                    ],
                  )
            ],),
          ),
        ) 
      ),
    );
  }
}