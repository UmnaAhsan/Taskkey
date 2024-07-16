import 'package:flutter/material.dart';
import 'package:todo_task_app/views/bnb/bnb.dart';
import 'package:todo_task_app/views/login/login.dart';
import 'package:todo_task_app/views/onboarding_screen/onboarding.dart';
import 'package:todo_task_app/views/page1/page1.dart';
import 'package:todo_task_app/views/profileEdit/profileEditView.dart';
import 'package:todo_task_app/views/settings/settingsView.dart';
import 'package:todo_task_app/views/signup/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body:
                // signup()
                //  login()
                //profileedit()
                //   settings()
                //  bottomNB()
                onboarding()
            // page1()
            ));
  }
}
