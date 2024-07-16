import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:todo_task_app/views/appbar/appbar.dart';
import 'package:todo_task_app/views/login/login.dart';
import 'package:todo_task_app/views/signup/signup.dart';

class signup extends StatefulWidget {
  //const login({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();
TextEditingController cpasswordController = TextEditingController();

void createAccount()async{
  String email = emailController.text.trim();
    String password= passwordController.text.trim();
      String CPassword = cpasswordController.text.trim();

      if(email == "" || password == "" || CPassword == ""){
        print("please fill all the details");
      }else if(password != CPassword){
        print("passwords do not match");
      }else{
        //create new account
      UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email, password: password);
          print("user created!");
      }
 // print("hello");
}

  @override
  Widget build(BuildContext context) {
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
                        createAccount();
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
                        Navigator.push(context,MaterialPageRoute(builder: (context) => login()));
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