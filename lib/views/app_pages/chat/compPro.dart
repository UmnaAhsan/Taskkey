// import 'dart:io';

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:image_cropper/image_cropper.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:mychatapp/homepage.dart';
// import 'package:mychatapp/models/usermodel.dart';
// //import 'package:firebase_storage/firebase_storage.dart';
// import 'dart:io';




// class cprofile extends StatefulWidget {
//   final UserModel userModel;
//   final User firebaseUser;

//   const cprofile({super.key, required this.userModel,required this.firebaseUser});
 

//   @override
//   State<cprofile> createState() => _cprofileState();
// }

// class _cprofileState extends State<cprofile> {
//   File? imageFile;
//   TextEditingController fullNameController = TextEditingController();

//  //File? imageFile;

//   void selectImage(ImageSource source)async{
//    XFile? pickedFile= await ImagePicker().pickImage(source: source);
// if(pickedFile != null){
//   cropImage(pickedFile);
// }
//   }
//   void cropImage(XFile file)async{
//  File? croppedImage =  await ImageCropper.platform.cropImage(
//   sourcePath: file.path,
//   aspectRatio: CropAspectRatio(ratioX: 1, ratioY: 1),
//   compressQuality: 20,

//   ) as File;

//     // File? croppedImage = (await ImageCropper.platform.cropImage(
//     //   sourcePath: file.path,
//     //    maxWidth: null,
//     //    maxHeight: null,
//     //   aspectRatio: null,
//     //    aspectRatioPresets: const [
//     //      CropAspectRatioPreset.original,
//     //      CropAspectRatioPreset.square,
//     //      CropAspectRatioPreset.ratio3x2,
//     //      CropAspectRatioPreset.ratio4x3,
//     //      CropAspectRatioPreset.ratio16x9
//     //    ],
//     //    cropStyle: CropStyle.rectangle,
//     //    compressFormat: ImageCompressFormat.jpg,
//     //    compressQuality: 20,
//     //    uiSettings: null,
//     //  )) as File?;

// if(croppedImage != null){
//   setState(() {
//     imageFile == croppedImage;
//   });
// }

//   }

//   void ShowPhotoOption(){
//      showDialog(context: context, builder: (context){
//       return AlertDialog(
//         title: Text("Upload profile picture"),
//         content: Column(mainAxisSize: MainAxisSize.min,
//           children: [
//           ListTile(
//             onTap: (){
//               Navigator.pop(context);
//               selectImage(ImageSource.gallery);
//             },
//             title: Text("Select from Gallery"),
//             leading: Icon(Icons.photo_album),
//           ),
//            ListTile(
//             onTap: (){
//                Navigator.pop(context);
//               selectImage(ImageSource.camera);
//             },
//             title: Text("Take a photo"),
//                leading: Icon(Icons.camera_alt),
//           )
//         ],),
//       );
//      });
//   }
//   checkValues(){
//     String fullname = fullNameController.text.trim();
//     if (fullname == "" || imageFile == null){
//       print("Please fill all the fields");
//     }
//     else{
//       uploadData();
//     }
//   }

//   void uploadData()async{
//     UploadTask uploadTask = FirebaseStorage.instance.ref("profilepictures").
//     child(widget.userModel.uid.toString()).putFile(imageFile!);
//     //  UploadTask uploadTask = FirebaseStorage.instance
//     //    .ref('ProfilePictures')
//     //    .child(widget.userModel!.uid.toString())
//     //      .putFile(imageFile!);
//    TaskSnapshot snapshot = await uploadTask;
//    String? imageUrl = await  snapshot.ref.getDownloadURL();
//    String? fullname = fullNameController.text.trim();

//    widget.userModel.fullname = fullname;
//    widget.userModel.profilepic = imageUrl;

//    await FirebaseFirestore.instance.collection("users").doc(widget.
//    userModel.uid).set(widget.userModel.toMap()).then((value) {
//     print("Data uploaded");
//     Navigator.push(context, MaterialPageRoute(builder: (context)=>
//      home(userModel: widget.userModel, firebaseUser: widget.firebaseUser)));
//    });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Complete Profile"),centerTitle: true,),
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.all(26),
//           child: Container(
//             child: ListView(
//               children: [
//                 CupertinoButton(onPressed: (){
//                   ShowPhotoOption();
//                 },
//                   child: CircleAvatar(
//                     backgroundImage: (imageFile != null) ? FileImage
//                    (File(imageFile!.path)) : null,
//                     child:(imageFile == null) ? Icon(Icons.person,size: 60,) : null,radius: 60,),),
//                 SizedBox(height: 10,),
//                 TextField(controller: fullNameController,
//                   decoration: InputDecoration(labelText: 'Full Name'),obscureText: true,),
//               SizedBox(height: 10,),
//                 CupertinoButton(child: Text("Submit"), onPressed:   (){
//                   checkValues();

//                   //ShowPhotoOption();
//                   //Navigator.push(context, MaterialPageRoute(builder: (context) => signup(),));
//                 }, color: Colors.blue,)
//                 ],
//             )),
//         )),
//     );
//   }
// }
















