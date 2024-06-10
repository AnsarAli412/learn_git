 import 'package:flutter/material.dart';

mixin class SettingsDetails{
  viewListTile(IconData icon,String name){
    return ListTile(
      leading:Icon(icon,color: Colors.white,),
      title: Text(name,style: TextStyle(color: Colors.white,fontSize: 15),),
      trailing: Icon(Icons.arrow_forward_ios,size: 10,color: Colors.white,),
    );
  }

}