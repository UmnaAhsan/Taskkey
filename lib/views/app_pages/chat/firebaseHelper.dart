import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
//import 'package:mychatapp/models/usermodel.dart';
import 'package:todo_task_app/views/app_pages/chat/models/userModel.dart';

class firebaseHelper {
 static Future<UserModel?> getUserModelById(String uid)async{
    UserModel? userModel;

    DocumentSnapshot docSnap =  await    FirebaseFirestore.instance.collection("users").doc(uid).get();

    if(docSnap.data() != null) {
      userModel = UserModel.fromMap(docSnap.data() as Map<String, dynamic>);

      return userModel;
    }
  }
}