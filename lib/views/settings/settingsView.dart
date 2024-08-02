import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:todo_task_app/views/app_pages/language/language.dart';
import 'package:todo_task_app/views/settings/themeChanger.dart';

class settings extends StatefulWidget {
  const settings({super.key});

  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {

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
  void initState() {
    // TODO: implement initState
    super.initState();
    
      FirebaseMessaging.onMessage.listen((message){
     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message.data["myname"].toString()),
      duration: Duration(seconds: 10),
      backgroundColor: Colors.blue,
      ));
     });

     FirebaseMessaging.onMessageOpenedApp.listen((message) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text("App was opened by a notification"),
      duration: Duration(seconds: 10),
      backgroundColor: Colors.blue,
      ));
      });
  }

  @override
  Widget build(BuildContext context) {
     final themeChanger = Provider.of <ThemeChanger>(context);
    return MaterialApp(
     //   theme: _switchValue ? _lightTheme : _darkTheme,
     debugShowCheckedModeBanner: false,
      
      home:
    
    Scaffold(
      //  backgroundColor:_switchValue ? Colors.white : Colors.black,
     // backgroundColor: Colors.black,
      appBar: AppBar(backgroundColor:  Colors.black,
        title: Center(child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Settings",style: TextStyle(color: Colors.white),),
        )),
        leading:Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(height: 20,width: 20,
              decoration: BoxDecoration(color:  Colors.black,borderRadius: BorderRadius.circular(30),
              boxShadow: [BoxShadow(color: Colors.white,blurRadius: 1)]),
              child:Center(child: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.white,size: 20,)),),
        ),
        ),
       body: Padding(
         padding: const EdgeInsets.only(top: 25,left: 10,right: 10,bottom: 10),
         child: SingleChildScrollView(scrollDirection: Axis.vertical,
           child: Column(children: [
            Container(height: 50,width: 350,decoration: BoxDecoration(color:  Colors.black,boxShadow: [
              BoxShadow(color: Colors.white,blurRadius: 1)],borderRadius: BorderRadius.circular(10),),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("permission".tr,style: TextStyle(color: Colors.white,fontSize: 17),),
              ),
              //Switch(value: , onChanged: onChanged)
            ],),),
            SizedBox(height: 13,),
             Container(height: 50,width: 350,decoration: BoxDecoration(color:  Colors.black,boxShadow: [
              BoxShadow(color: Colors.white,blurRadius: 1)],borderRadius: BorderRadius.circular(10),),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("pushNotification".tr,style: TextStyle(color: Colors.white,fontSize: 17),),
              ),
              //Switch(value: , onChanged: onChanged),
            ],),),
                SizedBox(height: 13,),
             Container(height: 50,width: 350,decoration: BoxDecoration(color:  Colors.black,boxShadow: [
              BoxShadow(color: Colors.white,blurRadius: 1)],borderRadius: BorderRadius.circular(10),),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("darkMode".tr,style: TextStyle(color: Colors.white,fontSize: 17),),
              ),
            //  Switch(value: isDark, onChanged: (state){
            //            // print('printing $state');
            //            setState(() {
            //              changeTheme(state);
            //            });
            //            //changeTheme(state);
            //            }),
                         

            ],),),
                SizedBox(height: 13,),
             Container(height: 50,width: 350,decoration: BoxDecoration(color:  Colors.black,boxShadow: [
              BoxShadow(color: Colors.white,blurRadius: 1)],borderRadius: BorderRadius.circular(10),),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("security".tr,style: TextStyle(color: Colors.white,fontSize: 17),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.arrow_forward_ios_rounded,color:Colors.white),
              )
            ],),),
                SizedBox(height: 13,),
             Container(height: 50,width: 350,decoration: BoxDecoration(color:  Colors.black,boxShadow: [
              BoxShadow(color: Colors.white,blurRadius: 1)],borderRadius: BorderRadius.circular(10),),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("help".tr,style: TextStyle(color: Colors.white,fontSize: 17),),
              ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Icon(Icons.arrow_forward_ios_rounded,color:Colors.white),
             )
            ],),),
                SizedBox(height: 13,),
             InkWell(onTap: (){
              showLanguageDialog();
             },
               child: Container(height: 50,width: 350,decoration: BoxDecoration(color:  Colors.black,boxShadow: [
                BoxShadow(color: Colors.white,blurRadius: 1)],borderRadius: BorderRadius.circular(10),),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("language".tr,style: TextStyle(color: Colors.white,fontSize: 17),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.arrow_forward_ios_rounded,color:Colors.white),
                )
                           ],),),
             ),
            
           ],),
         ),
       )
    ));
  }


  void showLanguageDialog(){
   showDialog(context: context, builder: (BuildContext context) {
     return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Text("Select language",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
               SizedBox(height: 15,),
               _buildLanguageItem(context,'English', 'en'),
             //   _buildLanguageItem(context,'Urdu', 'ur'),
                 _buildLanguageItem(context,'Spanish', 'es'),
                  _buildLanguageItem(context,'French', 'fr')
                ],),
        ),),
     );
   });
  }

  Widget _buildLanguageItem(
    BuildContext context,String name,String code
  ){
    return GestureDetector(
  onTap: (){
    //_language=name;
    Get.updateLocale(Locale(code));
    Navigator.pop(context);
  },
  child: Column(children: [
    Row(children: [
        Text(name,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
    ],),
    Divider()
  ],),
);
  }

}