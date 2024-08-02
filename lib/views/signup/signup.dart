import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_task_app/views/app_pages/chat/models/userModel.dart';
import 'package:todo_task_app/views/appbar/appbar.dart';
import 'package:todo_task_app/views/bnb/bnb.dart';
import 'package:todo_task_app/views/login/login.dart';
import 'package:todo_task_app/views/settings/themeChanger.dart';
import 'package:todo_task_app/views/signup/signup.dart';

class signup extends StatefulWidget {
 
//       : super(key: key);
  //const login({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();
TextEditingController cpasswordController = TextEditingController();

void checkValue (){
    String email = emailController.text.trim();
    String Password = passwordController.text.trim();
    String Cpassword = cpasswordController.text.trim();

            if(email == "" || Password == "" || Cpassword == ""){
              print("Please fill all the fields!");
            }
            else if(Password != Cpassword){
              print("Passwords do not match!");
            }
            else{
         //  print("Sign Up Successful!");
            signupp(email, Password);
            }
  }
 void signupp(String email, String password) async {
        UserCredential? credential;    //usercrdential milna chahiye
  try {
  credential = await FirebaseAuth.instance.createUserWithEmailAndPassword
  (email: email,password: password,);

}on FirebaseAuthException catch (e) {
  print(e.message.toString());
  //Navigator.pop(context);
}
  if (credential != null) {
    //print('The password provided is too weak.');
    String uid = credential.user!.uid;         //firestore user ka data store kreingy
    UserModel newUser = UserModel(
      uid: uid,
      email: email,
      fullname: "",
      profilepic: ""
    );
    await FirebaseFirestore.instance.collection("users").doc(uid).set
    (newUser.toMap()).then((value) {
      print("New User Created!");
      // Navigator.push(context, MaterialPageRoute(builder: (context)=>cprofile(userModel: newUser,
      //  firebaseUser: credential!.user!)));
      Navigator.push(context, MaterialPageRoute(builder: (context)=>login()));
    });
 
// else if (e.code == 'email-already-in-use') {
//     print('The account already exists for that email.');
//   }
// } catch (e) {
//   print(e);
}
  }
  @override
  Widget build(BuildContext context) {
     final themeChanger = Provider.of <ThemeChanger>(context);
    return SafeArea(
      child: Scaffold(backgroundColor: Colors.black,
        appBar: PreferredSize(preferredSize: Size.fromHeight(90.0),
      child: appbar2()),
        
        body: Padding(
          padding: const EdgeInsets.all(30),
          child: SingleChildScrollView(scrollDirection: Axis.vertical,
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text("Create Account",style: TextStyle(
                color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                SizedBox(height: 8,),
                  Text("Please enter your email address" ,style: TextStyle(color: Colors.grey,fontSize: 14),),
                 Text( "and password for login",style: TextStyle(color: Colors.grey,fontSize: 14),),
                 SizedBox(height: 20,),
                 Container(height: 35,width: 340,decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                 ),
                  child: TextField(controller: emailController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),hintText: 'Enter Your Email'),)),
                     SizedBox(height: 12,),
                 Container(height: 35,width: 340,decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
           ),
                  child: TextField(controller: passwordController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),hintText: 'Enter Your Password'),)),
                       SizedBox(height: 12,),
                   Container(height: 35,width: 340,decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                 ),
                  child: TextField(controller: cpasswordController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),hintText: 'Enter Your CPassword'),)),
                      SizedBox(height: 15,),
                      InkWell(onTap: (){
                        checkValue();
                      },
                        child: Container(height: 35,width: 340,decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                                         color: const Color.fromARGB(255, 8, 43, 71),boxShadow: [BoxShadow(color: Colors.blue,blurRadius: 5)]),
                                          child: Center(child: Text("Sign Up",style: TextStyle(color: Colors.white),))),
                      ),
                  SizedBox(height: 15,),
                  Center(child: Text("SignUp With",style: TextStyle(color: Colors.grey),)),
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
                      Text("Have An Account",style: TextStyle(color: Colors.grey),),
                      InkWell(onTap: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context) =>
                        // login(userModel: widget.userModel, firebaseUser:widget. firebaseUser)
                        login()
                         ));
                      },
                        child: Text("Sign In",style: TextStyle(color: Colors.blue),))
                    ],
                  )
            ],),
          ),
        ) 
      ),
    );
  }
}