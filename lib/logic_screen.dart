
import 'package:flutter/material.dart';

 mixin class VeiwDesign{
Widget  imageVeiw(url){
    return Image.asset(url);
  }
Widget iconsVeiw(Function()? onPressed, icons){
  return Container(
    child: IconButton(onPressed: onPressed, icon:icons ),
  );
}
}