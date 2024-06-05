import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ElevatedButton(onPressed: (){
        // checkIsYourLoggedIn(0);
      },child: Text("Check user"),),
    );
  }

  // checkIsYourLoggedIn(int a){
  //   if(a == 0){
  //     return true;
  //   }else{
  //     return true;
  //   }
  // }
}


