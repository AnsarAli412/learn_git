import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(

debugShowCheckedModeBanner: false,
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget with AccountVeiw{
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor:Colors.white,
      appBar: AppBar(
        backgroundColor:Colors.white,
        elevation: 0,
        leading: const Icon(Icons.arrow_back,size: 30,),
        title:  const Text("Account type and toos",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black)),
      ),
      body: 
      Wrap(
        children: [
          Card(
            child: Container(
              color: Colors.white,
              width: 500,
              height: 180,
              child: Column(
                children: [

                  const SizedBox(height: 20,),
                  textVeiw("Account type",const TextStyle(color: Colors.grey,fontSize:15 )),
                  const SizedBox(height: 10,),
                  listTileVeiw("Switch to prfessional account",),
                  listTileVeiw("Add new profession account",)
                ],
              ),

            ),
          ),

          Card(
            child: Container(
              color: Colors.white70,
              width: 500,
            height:550,
              child: Column(
                children: [
                  const SizedBox(height: 20,),
                  const Padding(
                    padding: EdgeInsets.only(right: 270),
                    child: Text("Tools",style:TextStyle(color: Colors.grey,fontSize:15 )),
                  ),
                  const SizedBox(height: 10,),
                  listTileVeiw("Branded context",),
                  listTileVeiw("Request verification"),
                  listTileVeiw("Sing up for Meta Verifled")
                ],
              ),

            ),
          ),
        ],
      ),
    );
  }
}
mixin class AccountVeiw{
  textVeiw(String data ,TextStyle TextStyle){
    return Padding(
      padding: const EdgeInsets.only(right: 220),
      child: Text(data,style: TextStyle,),
    );
  }
  listTileVeiw(title, ) {
    return ListTile(
      contentPadding: const EdgeInsets.only(left: 20),
        title:Text(title),
        trailing: IconButton(
          onPressed: (){

          }, icon:const Icon(Icons.arrow_forward_ios,size: 15,),
        ),
        );
    }

}


