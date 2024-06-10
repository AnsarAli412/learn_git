import 'package:flutter/material.dart';

class ViewFavouritesScreen extends StatefulWidget {
  const ViewFavouritesScreen({super.key});

  @override
  State<ViewFavouritesScreen> createState() => _ViewFavouritesScreenState();
}

class _ViewFavouritesScreenState extends State<ViewFavouritesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: [
          Icon(
            Icons.add,
            size: 39,
          )
        ],
        leading: Icon(
          Icons.keyboard_backspace_outlined,
          size: 30,
        ),
        title: Text(
          "Favourites",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.normal),
        ),
      ),
      // backgroundColor: Colors.white,

      body: Column(
        children: [
          Container(
            height: 130,
            width: 400,
            child: Padding(
              padding: const EdgeInsets.only(left: 0, top: 15),
              child: Card(
                color: Colors.white54
                ,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: Column(
                    children: [
                      Text("""posts from your favourites are shown higher in
feed.we don't send notifications when you edit
            your favourites."""),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 100,
                        ),
                          child: Text("How it wprks.",style:
                          TextStyle(fontSize: 16,color: Colors.black)),
                        ),

                    ],
                  ),
                ),
              ),

            ),
          ),SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                prefixIcon: Icon(Icons.search),
                hintText: 'Search...',
              ),
            ),
          ),SizedBox(
            height: 36,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text("Favourites",style: TextStyle(color: Colors.black,fontSize: 20),),),
                Padding(
                  padding: const EdgeInsets.only(left: 150),
                  child: Text(" Remove All",style: TextStyle(color: Colors.blue,fontSize: 14),),
                ),

            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left:0),

                child:
                Text("To get started you can confirm these suggested"),
              ),
              Text("based on your activity on Instagram.."),
            ],
          ),
          // Expanded(
          //   child: ListView(
          //     children: [
          //       Column(
          //         children: [
          //           ListTile(
          //             leading: CircleAvatar(
          //               backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbp5ZA55fUsqsV-1FNBEQzLkhQ51ha2Q5fOQ&s"),
          //             ),
          //             title: Text("aparna"),
          //             subtitle: Text("pandey"),
          //             trailing: Icon(Icons.remove),
          //           ),
          //         ],
          //       )
          //     ],
          //   ),
          // ),
          // Expanded(
          //   child: ListView(
          //     children: [
          //       Column(
          //         children: [
          //           ListTile(
          //             leading: CircleAvatar(
          //               backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbp5ZA55fUsqsV-1FNBEQzLkhQ51ha2Q5fOQ&s"),
          //             ),
          //             title: Text("aparna"),
          //             subtitle: Text("pandey"),
          //             trailing: Icon(Icons.remove),
          //           ),
          //         ],
          //       )
          //     ],
          //   ),
          // ),
          //
          // Expanded(
          //   child: ListView(
          //     children: [
          //       Column(
          //         children: [
          //           ListTile(
          //             leading: CircleAvatar(
          //               backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbp5ZA55fUsqsV-1FNBEQzLkhQ51ha2Q5fOQ&s"),
          //             ),
          //             title: Text("aparna"),
          //             subtitle: Text("pandey"),
          //             trailing: Icon(Icons.remove),
          //           ),
          //         ],
          //       )
          //     ],
          //   ),
          // ),
          //
          // Expanded(
          //   child: ListView.builder(
          //     itemCount: 10,
          //     itemBuilder: (context, index) {
          //       return ListTile(
          //         leading: CircleAvatar(
          //           backgroundImage: NetworkImage(
          //             "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbp5ZA55fUsqsV-1FNBEQzLkhQ51ha2Q5fOQ&s",
          //           ),
          //           radius:16,
          //         ),
          //         title: Text("Fuggi_002  "),
          //         subtitle: Text("Subtitle"),
          //         trailing: Icon(Icons.remove),
          //
          //       );
          //     },
          //   ),
          // ),
          // Expanded(
          //   child: ListView.builder(
          //     itemCount: 2,
          //     itemBuilder: (context, index) {
          //       return ListTile(
          //         leading: CircleAvatar(
          //           backgroundImage: NetworkImage(
          //             "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbp5ZA55fUsqsV-1FNBEQzLkhQ51ha2Q5fOQ&s",
          //           ),
          //           radius:16,
          //         ),
          //         title: Text("Aashika_002  "),
          //         subtitle: Text("Subtitle"),
          //         trailing: Icon(Icons.remove),
          //
          //       );
          //     },
          //   ),
          // ),
          // Expanded(
          //   child: ListView.builder(
          //     itemCount: 3,
          //     itemBuilder: (context, index) {
          //       return ListTile(
          //         leading: CircleAvatar(
          //           backgroundImage: NetworkImage(
          //             "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbp5ZA55fUsqsV-1FNBEQzLkhQ51ha2Q5fOQ&s",
          //           ),
          //           radius:16,
          //         ),
          //         title: Text("puja_002  "),
          //         subtitle: Text("Subtitle"),
          //         trailing: Icon(Icons.remove),
          //
          //       );
          //     },
          //   ),
          // ),
          // Expanded(
          //   child: ListView.builder(
          //     itemCount:1,
          //     itemBuilder: (context, index) {
          //       return ListTile(
          //         leading: CircleAvatar(
          //           backgroundImage: NetworkImage(
          //             "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbp5ZA55fUsqsV-1FNBEQzLkhQ51ha2Q5fOQ&s",
          //           ),
          //           radius:16,
          //         ),
          //         title: Text("kajal_002  "),
          //         subtitle: Text("Subtitle"),
          //         trailing: Icon(Icons.remove),
          //
          //       );
          //     },
          //   ),
          // ),
          // Expanded(
          //   child: ListView.builder(
          //     itemCount:1,
          //     itemBuilder: (context, index) {
          //       return ListTile(
          //         leading: CircleAvatar(
          //           backgroundImage: NetworkImage(
          //             "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbp5ZA55fUsqsV-1FNBEQzLkhQ51ha2Q5fOQ&s",
          //           ),
          //           radius:16,
          //         ),
          //         title: Text("Nagma_002  "),
          //         subtitle: Text("Subtitle"),
          //         trailing: Icon(Icons.remove),
          //
          //       );
          //     },
          //   ),
          // ),
          // Expanded(
          //   child: ListView.builder(
          //     itemCount:1,
          //     itemBuilder: (context, index) {
          //       return ListTile(
          //         leading: CircleAvatar(
          //           backgroundImage: NetworkImage(
          //             "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbp5ZA55fUsqsV-1FNBEQzLkhQ51ha2Q5fOQ&s",
          //           ),
          //           radius:16,
          //         ),
          //         title: Text("henaa_002  "),
          //         subtitle: Text("Subtitle"),
          //         trailing: Icon(Icons.remove),
          //
          //       );
          //     },
          //   ),
          // ),
          // Expanded(
          //   child: ListView.builder(
          //     itemCount:1,
          //     itemBuilder: (context, index) {
          //       return ListTile(
          //         leading: CircleAvatar(
          //           backgroundImage: NetworkImage(
          //             "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbp5ZA55fUsqsV-1FNBEQzLkhQ51ha2Q5fOQ&s",
          //           ),
          //           radius:16,
          //         ),
          //         title: Text("jyoti_002  "),
          //         subtitle: Text("Subtitle"),
          //         trailing: Icon(Icons.remove),
          //
          //       );
          //     },
          //   ),
          // ),
          // Expanded(
          //   child: ListView.builder(
          //     itemCount:1,
          //     itemBuilder: (context, index) {
          //       return ListTile(
          //         leading: CircleAvatar(
          //           backgroundImage: NetworkImage(
          //             "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbp5ZA55fUsqsV-1FNBEQzLkhQ51ha2Q5fOQ&s",
          //           ),
          //           radius:16,
          //         ),
          //         title: Text("Fuggi_002  "),
          //         subtitle: Text("Subtitle"),
          //         trailing: Icon(Icons.remove),
          //
          //       );
          //     },
          //   ),
          // ),


          ListTile(
            contentPadding: EdgeInsets.all(20),
            leading:CircleAvatar(
              backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPbUJMel09tRUYZWPlAMIsH63ikO1XZwqLzGHz6dusqmDfQM2c9_tmT8BWVpWFjIdaL68&usqp=CAU"),
              radius: 30,
            ),

            title: Text("aparna"),
            subtitle: Text("wowo"),
            trailing:Padding(
              padding: EdgeInsets.only(left: 20),


    )
              ),
          ListTile(
              contentPadding: EdgeInsets.all(20),
              leading:CircleAvatar(
                backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPbUJMel09tRUYZWPlAMIsH63ikO1XZwqLzGHz6dusqmDfQM2c9_tmT8BWVpWFjIdaL68&usqp=CAU"),
                radius: 30,
              ),

              title: Text("aparna"),
              subtitle: Text("pandey"),
              trailing:Padding(
                padding: EdgeInsets.only(left: 20),


              )
          ),
          ListTile(
              contentPadding: EdgeInsets.all(20),
              leading:CircleAvatar(
                backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPbUJMel09tRUYZWPlAMIsH63ikO1XZwqLzGHz6dusqmDfQM2c9_tmT8BWVpWFjIdaL68&usqp=CAU"),
                radius: 30,
              ),

              title: Text("aparna"),
              subtitle: Text("pandey"),
              trailing:Padding(
                padding: EdgeInsets.only(left: 20),


              )
          ),
          ListTile(
              contentPadding: EdgeInsets.all(20),
              leading:CircleAvatar(
                backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPbUJMel09tRUYZWPlAMIsH63ikO1XZwqLzGHz6dusqmDfQM2c9_tmT8BWVpWFjIdaL68&usqp=CAU"),
                radius: 30,
              ),

              title: Text("aparna"),
              subtitle: Text("pandey"),
              trailing:Padding(
                padding: EdgeInsets.only(left: 20),


              )
          ),
          ListTile(
              contentPadding: EdgeInsets.all(20),
              leading:CircleAvatar(
                backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPbUJMel09tRUYZWPlAMIsH63ikO1XZwqLzGHz6dusqmDfQM2c9_tmT8BWVpWFjIdaL68&usqp=CAU"),
                radius: 30,
              ),

              title: Text("aparna"),
              subtitle: Text("pandey"),
              trailing:Padding(
                padding: EdgeInsets.only(left: 20),


              )
          ),

        ],
      ),
    );
  }
}
