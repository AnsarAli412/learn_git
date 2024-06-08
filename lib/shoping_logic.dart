import 'package:flutter/material.dart';

class ShopingClass {
  viewappBar(String name, [IconData? icon]) {
    return Padding(
        padding: EdgeInsets.only(right: 10),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(name,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold)),
          actions: [
            Icon(icon, color: Colors.black),
          ],
        ));
  }
}

class viewimage extends ShopingClass {
  Showimage(String src) {
    return Image(image: NetworkImage(src));
  }
}

class viewtext extends viewimage {
  showtext(String) {
    return
      Padding(padding: EdgeInsets.only(left:18),
          child: Text(
            String,
            style: TextStyle(fontSize: 14),
            textAlign:  TextAlign.left,
          )
      );
  }
}

class circulerimage extends viewtext {
  viewcirkularimage(Image) {
    return Padding(
        padding: EdgeInsets.only(right: 15),
        child: CircleAvatar(
          backgroundImage: NetworkImage(Image),
          backgroundColor: Colors.white,
          radius: 30,
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.black,
                width: 2,
              ),
            ),
          ),
        ));
  }
}

class imagedowntexet extends circulerimage {
  showimagebuttomtext(String name) {
    return Padding(
        padding: EdgeInsets.only(right: 20, left: 19),
        child: Row(
          children: [
            Text(name, style: TextStyle()),
          ],
        ));
  }
}

class buttonview extends imagedowntexet {
  showbutton(String name) {
    return Container(
        width: 360,
        height: 50,
        color: Colors.red,
        child: Center(
          child: Text(name,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
        ));
  }
}
