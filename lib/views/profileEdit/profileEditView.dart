import 'dart:io';
import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:provider/provider.dart';
import 'package:todo_task_app/views/app_pages/chat/models/userModel.dart';
import 'package:todo_task_app/views/settings/themeChanger.dart';

class profileedit extends StatefulWidget {
  final UserModel userModel;
  final User firebaseUser;

  const profileedit(
      {super.key, required this.userModel, required this.firebaseUser});
  // const profileedit({super.key});

  @override
  State<profileedit> createState() => _profileeditState();
}

class _profileeditState extends State<profileedit> {
  File? imageFile;
  TextEditingController emailController = TextEditingController();
  TextEditingController NameController = TextEditingController();
  TextEditingController userNameController = TextEditingController();

  void selectImage(ImageSource source) async {
    XFile? pickedFile = await ImagePicker().pickImage(source: source);
    if (pickedFile != null) {
      //cropImage(pickedFile);
      cropImage(pickedFile);
    }
  }

  void cropImage(XFile file) async {
    CroppedFile? croppedFile = await ImageCropper().cropImage(
      sourcePath: file.path,
      aspectRatio: CropAspectRatio(ratioX: 1, ratioY: 1),
      compressQuality: 20,
    );

// if(croppedFile != null) {
//   setState(() {
//     imageFile = croppedFile;
//   });
// }class
  }

  void ShowPhotoOption() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
              title: Text("Upload profile picture"),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    onTap: () {
                      Navigator.pop(context);
                      selectImage(ImageSource.gallery);
                    },
                    title: Text("Select from Gallery"),
                    leading: Icon(Icons.photo_album),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.pop(context);
                      selectImage(ImageSource.camera);
                    },
                    title: Text("Take a photo"),
                    leading: Icon(Icons.camera_alt),
                  )
                ],
              ));
        });
  }

  checkValues() {
    String Name = NameController.text.trim();
    String UserName = userNameController.text.trim();
    String email = emailController.text.trim();
    //String fullname = NameController.text.trim();
    if (Name == "" || imageFile == null || email == "" || UserName == "") {
      print("Please fill all the fields");
    } else {
      print("Done!");
      uploadData();
    }
  }

  void uploadData() async {
    UploadTask uploadTask = FirebaseStorage.instance
        .ref("profilepictures")
        .child(widget.userModel.uid.toString())
        .putFile(imageFile!);

    TaskSnapshot snapshot = await uploadTask;

    String imageUrl = await snapshot.ref.getDownloadURL();
    String Name = NameController.text.trim();
    String UserName = userNameController.text.trim();
    String email = emailController.text.trim();

    widget.userModel.UserName = UserName;
    widget.userModel.profilepic = imageUrl;
    widget.userModel.Name = Name;
    widget.userModel.email = email;

    await FirebaseFirestore.instance
        .collection("users")
        .doc(widget.userModel.uid)
        .set(widget.userModel.toMap())
        .then((value) {
      print("Data uploaded!");
      Navigator.pop(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    final themeChanger = Provider.of<ThemeChanger>(context);
    return Scaffold(
      backgroundColor: Color(0xFF19173D),
      appBar: AppBar(
        backgroundColor: Color(0xFF19173D),
        title: Center(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Edit Profile",
            style: TextStyle(color: Colors.white),
          ),
        )),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
                color: Color(0xFF19173D),
                borderRadius: BorderRadius.circular(30),
                boxShadow: [BoxShadow(color: Colors.white, blurRadius: 1)]),
            child: Center(
                child: Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Colors.white,
              size: 20,
            )),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
                onTap: () {
                  checkValues();
                },
                child: Text(
                  "Save",
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                      fontSize: 18),
                )),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Center(
                child: InkWell(
                  onTap: () {
                    ShowPhotoOption();
                  },
                  child: Container(
                      height: 150,
                      width: 150,
                      child: CircleAvatar(
                        backgroundImage:
                            (imageFile != null) ? FileImage(imageFile!) : null,
                        //backgroundColor: Colors.red,
                      )),
                ),
              ),
              SizedBox(
                height: 13,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Name",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  )),
              Container(
                  height: 50,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Color(0xFF19173D),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white,
                      )
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    controller: NameController,
                    decoration: InputDecoration(border: OutlineInputBorder()),
                  )),
              SizedBox(
                height: 10,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Email",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  )),
              Container(
                  height: 50,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Color(0xFF19173D),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white,
                      )
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(border: OutlineInputBorder()),
                  )),
              SizedBox(
                height: 10,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "UserName",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  )),
              Container(
                  height: 50,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Color(0xFF19173D),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white,
                      )
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    controller: userNameController,
                    decoration: InputDecoration(border: OutlineInputBorder()),
                  )),
              SizedBox(
                height: 10,
              ),
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Number",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  )),
              Container(
                  height: 50,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Color(0xFF19173D),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white,
                      )
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    decoration: InputDecoration(border: OutlineInputBorder()),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
