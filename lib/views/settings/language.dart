import 'package:get/get.dart';

class Languages extends Translations{
  @override
  Map<String,Map<String,String>> get keys=>{
    //english
    'en_US':{
      'settings':'Settings',
      'account':'Account'  ,
      'editProfile':'Edit Profile'  ,
      'changePassword':'Change Password'  ,
      'privacy':'Privacy'  ,
      'notification':'Notification' ,
      'update':'Update'  ,
      'other':'Other'  ,
      'darkMode':'Dark Mode'  ,
      'language':'Language',  
      'region':'Region'  ,
    },

    //spanish
        'es_ES':{
      'settings':'configuración',
      'account':'cuenta'  ,
      'editProfile':'Editar perfil'  ,
      'changePassword':'cambiar la contraseña'  ,
      'privacy':'privacidad'  ,
      'notification':'notificación'  ,
      'update':'actualizar'  ,
      'other':'otra'  ,
      'darkMode':'modo oscuro '  ,
      'language':'idioma',  
      'region':'región',
      'help': 'ayuda',
      'permission':'permiso',
      'pushNotification': 'notificación de inserción',
      'security':'seguridad'  
    },

     //french
        'fr_FR':{
      'settings':'paramètres',
      'pushNotification': 'notification push',
      'security':'sécurité' ,
      'help': 'aide',
      'permission':'autorisation', 
      'account':'compte'  ,
      'editProfile':'Editer le profil'  ,
      'changePassword':'changer le mot de passe'  ,
      'privacy':'confidentialité'  ,
      'notification':'notification'  ,
      'update':'mise à jour'  ,
      'other':'autre'  ,
      'darkMode':'Mode sombre'  ,
      'language':'langue',  
      'region':'région'  
    }

  };
}