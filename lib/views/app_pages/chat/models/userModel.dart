class UserModel {
  String? uid;
  String? fullname;
  String? email;
  String? profilepic;
  String? UserName;
  String? Name;

  UserModel({this.email, this.fullname, this.profilepic, this.uid});

   UserModel.fromMap(Map<String,dynamic>map) {
    uid = map ["uid"];
    fullname = map ["fullname"];
    email = map ["email"];
    profilepic = map ["profilepic"];
    UserName = map ["username"];
    Name = map ["name"];
   }

   Map<String,dynamic> toMap(){
    return{
      "UserName" : "username",
      "uid": uid,
      "fullname": fullname,
      "email": email,
      "profilepic": profilepic,
      "Name" : Name
    };
   }
}