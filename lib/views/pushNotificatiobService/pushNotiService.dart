// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';

// //remote msg ky andr noti hoti hai
// // yeh on background wala function global banega matlb kisi class ya function ky andr nhi

// Future <void> backgroundHandler(RemoteMessage message) async{
//     print("message received! ${message.notification!.title}");
// }

// class NotificationService{
//  static Future<void> initialize()async{                               //isse noti ki premission miligi
//    NotificationSettings settings = await FirebaseMessaging.instance.requestPermission();
//    if(settings.authorizationStatus == AuthorizationStatus.authorized) {
//               //background message
//      FirebaseMessaging.onBackgroundMessage(backgroundHandler);
//       FirebaseMessaging.onMessage.listen((message){
//         print("notification recieves! ${message.notification!.title}");
//       });
//      //jb app running mei ho or ussi waqt msg aye.

//     print("notification initialized!");
//    }
//   }
// }



// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:todo_task_app/views/settings/settingsView.dart';


// Future< void >backgroundHandler(RemoteMessage message)async{
//     print("Noti recieved! ${message.notification!.title}");
// }

// class NotificationService{
//  static Future< void> initialize()async {
//     NotificationSettings settings = await FirebaseMessaging.instance.requestPermission();
//      if(settings.authorizationStatus == AuthorizationStatus.authorized){

//     FirebaseMessaging.onBackgroundMessage(backgroundHandler);
//      FirebaseMessaging.onMessage.listen((message){
//       print("Noti recieved ${message.notification!.title}");
//     });

//       print("Notification Recieves!");
//      }
//   }
// }

import 'package:firebase_messaging/firebase_messaging.dart';
 import 'package:todo_task_app/views/settings/settingsView.dart';

Future <void> backgroundMessageHandler(RemoteMessage message)async{
print("Noti recieves! ${message.notification!.title}");
}

class NotificationService{
 static Future<void> initialized()async{
   NotificationSettings setting =await FirebaseMessaging.instance.requestPermission();
   if(setting.authorizationStatus == AuthorizationStatus.authorized){

    FirebaseMessaging.onBackgroundMessage(backgroundMessageHandler);
    FirebaseMessaging.onMessage.listen((message){
      print("Noti recieves! ${message.notification!.title}");
    });
    print("Notification recieved!");
   }
   }
}


