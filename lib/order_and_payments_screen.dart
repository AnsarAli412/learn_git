import 'package:flutter/material.dart';

import 'mixin_class.dart';

class OdreAndPaymentsScreen extends StatefulWidget {
  const OdreAndPaymentsScreen({super.key});

  @override
  State<OdreAndPaymentsScreen> createState() => _OdreAndPaymentsScreenState();
}

class _OdreAndPaymentsScreenState extends State<OdreAndPaymentsScreen> with SettingsDetails{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Order and payments",
          style: TextStyle(color: Colors.white, fontSize: 17),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.shopping_cart_outlined,
              color: Colors.white,
              size: 27,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.menu,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
      ),
      body: Container(
        color: Colors.black,
        width: 800,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 230, top: 10),
              child: Text(
                "Rective activity",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Icon(
                      Icons.shopping_bag_outlined,
                      color: Colors.white60,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.favorite_outline_sharp,
                      color: Colors.white60,
                    ),
                  ),
                  Icon(
                    Icons.groups,
                    color: Colors.white60,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "  You don't have any pending or completed \n"
                "activity. when you shop, donate or transfer \n  "
                "  money.that activity will appear here.",
                style: TextStyle(color: Colors.white60, fontSize: 13),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 300,top: 20),
              child: Text(
                "Settings",
                style: TextStyle(color: Colors.white),
              ),
            ),
            viewListTile(Icons.payment, "Payment methods"),
            viewListTile(Icons.subtitles_sharp, "Subscriptions"),
            viewListTile(Icons.contacts_outlined, "Contact info"),
            viewListTile(Icons.security_update_good_rounded, "Security"),
            viewListTile(Icons.help_outline_outlined, "Help and support"),
          ],
        ),
      ),
    );
  }
}
