
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:todo_task_app/firebase_options.dart';
import 'package:todo_task_app/views/login/login.dart';
import 'package:todo_task_app/views/pushNotificatiobService/pushNotiService.dart';
import 'package:todo_task_app/views/settings/language.dart';
import 'package:todo_task_app/views/settings/themeChanger.dart';
import 'package:uuid/uuid.dart';

var  uuid = Uuid();

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
 await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
 //await NotificationService.initialize();
 await NotificationService.initialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers:[
        ChangeNotifierProvider(create: (_)=> ThemeChanger())
 
      ],
      child: Builder(
        builder: (BuildContext context){
       final themeChanger = Provider.of <ThemeChanger>(context);
        return
        GetMaterialApp(
            locale: Locale('en', 'US'),  
            fallbackLocale: Locale('en','US'),
            translations: Languages(),
            theme: ThemeData.light(),
            darkTheme: ThemeData.dark(),
              debugShowCheckedModeBanner: false,
              home:
              // (FirebaseApp.instance.currentUser != null) ? bottomNB() :login()
              
             Scaffold(
                 body:
                // language()
                
                      // signup()
                        login()
                    //profileedit()
                     //  settings()
                      // bottomNB()
                     // onboarding()
                  // page1()
               //   myTask()
          ));
        }
      ),
    );          
  }
}

// import 'dart:async';

// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:todo_task_app/firebase_options.dart';
// import 'package:todo_task_app/views/app_pages/chat/models/userModel.dart';
// import 'package:todo_task_app/views/bnb/bnb.dart';
// import 'package:todo_task_app/views/login/login.dart';

// void main() async{
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

// User? currentUser = FirebaseAuth.instance.currentUser;
// if (currentUser != null){
//   ///logged In
//   UserModel? thisUserModel =  await firebaseHelper.getUserModelById(currentUser.uid);
//   if(thisUserModel != null){
//      runApp(MyAppLoggedIn(userModel: thisUserModel, firebaseUser: currentUser));
//   }
//   else{
//     runApp(MyApp());
//   }
//  // runApp(MyAppLoggedIn(userModel: userModel, firebaseUser: currentUser));
// }
// else{
//   //Not logged in
//   runApp(MyApp());
// }
 
// }



// //NOT LOGGED IN
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(debugShowCheckedModeBanner: false,
//       home:Scaffold(
//         body:login()
//        // cprofile()
//        // splash()
//       // login()
//       // signup()
//       //cprofile()
//       //chatroom()
        
//       ),
//     );
//   }
// }
       



// // ALREADT LOGGED IN
// class MyAppLoggedIn extends StatelessWidget {
  
//  final UserModel userModel;
//  final User firebaseUser;

//   const MyAppLoggedIn({super.key, required this.userModel, required this.firebaseUser});
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(debugShowCheckedModeBanner: false,
//       home:Scaffold(
//         body:
//        // cprofile()
//        // splash()
//      //  login()
//       // signup()
//       //cprofile()
//      // home(userModel: userModel, firebaseUser: firebaseUser)
//     // chatroom()
//     bottomNB()
        
//       )
//     );
//   }
// }
       








