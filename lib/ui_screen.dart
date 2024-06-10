import 'package:flutter/material.dart';

import 'logic_screen.dart';

class UiDesign_screen extends StatefulWidget {
  const UiDesign_screen({super.key});

  @override
  State<UiDesign_screen> createState() => _UiDesign_screenState();
}

class _UiDesign_screenState extends State<UiDesign_screen> with VeiwDesign{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:   AppBar(
        actions: [
         imageVeiw('asset/images/youtube.png'),
          iconsVeiw(() {
            showAboutDialog(
              context: context,
              applicationName: 'Connect to a device',
              children: [
               Row(
                 children: [
                   Column(
                     children: [
                       const SizedBox(

                           child: CircularProgressIndicator(
                             strokeWidth: 3,
                           ),
                         height: 20,
                         width: 20,
                       ),
                       iconsVeiw(() {

                       },Icon(Icons.phonelink_sharp) ),
                       iconsVeiw(() {

                       },Icon(Icons.lens) ),
                     ],
                   ),
                   const Column(
                     children: [
                       Text('Searching for devices'),
                       Text('Searching for devices'),
                       Text('Searching for devices'),

                     ],
                   )
                 ],
               )
              ],
            );
          }, const Icon(Icons.cast))
        ],
      ),
    );
  }
}
