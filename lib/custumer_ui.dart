import 'package:flutter/material.dart';
import 'package:learn_git/shoping_logic.dart';


class ShowPingView extends StatelessWidget {
  ShowPingView({super.key});

  @override
  var productsshop = buttonview();

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            productsshop.viewappBar("BALENCIAGA", Icons.search_rounded),
            SizedBox(height: 20),
            productsshop.Showimage(
                "https://t4.ftcdn.net/jpg/03/25/70/05/240_F_325700552_5QJD12HDtfii4xkGXnjLworiJMedgZQc.jpg"),
            productsshop.viewappBar("BALEANCIAGA NEW CAMPAIGN\n"
                "SPRING 2022"
                ""),
            SizedBox(height: 5),
            productsshop
                .showtext("A new installing of Balenciaga's multi-phase\n"
                "compaing photograpaher by stef Mitchell will be \n"
                "released in serverl waves"),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                productsshop.viewcirkularimage(
                    "https://images.squarespace-cdn.com/content/v1/5b8c557c8f51308965aa6dd8/1582105167338-ATE1J6TI8DX1GC3179Z4/BLACKWHITE-3.jpg"),
                productsshop.viewcirkularimage(
                    "https://m.media-amazon.com/images/I/51hCWgHJ1IL._SX679_.jpg"),
                productsshop.viewcirkularimage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSul-TmKonOx8jzasP6kLnzkTqQTPH_Pz-qdtwlYe5tb-amQewPLlVC3X2X9tTzAyQNTWw&usqp=CAU"),
                productsshop.viewcirkularimage(
                    "https://cdn.fcglcdn.com/brainbees/images/products/300x364/15453454a.webp"),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                productsshop.showimagebuttomtext("Sneakers"),
                productsshop.showimagebuttomtext("T-shiert"),
                productsshop.showimagebuttomtext(" Bags"),
                productsshop.showimagebuttomtext("Adidas")
              ],
            ),
            productsshop.viewappBar("SHOP THE COLLECTION  /"),
            productsshop.showbutton("Free Shoping & Return")
          ],
        ));
  }
}
