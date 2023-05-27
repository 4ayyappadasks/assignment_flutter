import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: profile_ui(),
  ));
}

class profile_ui extends StatefulWidget {
  const profile_ui({Key? key}) : super(key: key);

  @override
  State<profile_ui> createState() => _profile_uiState();
}

class _profile_uiState extends State<profile_ui> {
  var text = [
    "Privacy",
    "Purchase History",
    "Help & Support",
    "Setting",
    "Invite a Friend",
    "Log out"
  ];

  var icn = [
    Icons.privacy_tip_outlined,
    Icons.history,
    Icons.help_outline_outlined,
    Icons.settings,
    Icons.add_alert_sharp,
    Icons.output_outlined
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.add_circle,
                  color: Colors.black,
                ))
          ]),
      body: Stack(
        children: [
          const Positioned(
              left: 115,
              child: CircleAvatar(
                maxRadius: 70,
                backgroundImage:
                    AssetImage("assets/images/lakerose-wayanad-resort.jpg"),
              )),
          const Positioned(
              top: 150,
              left: 80,
              child: Row(children: [
                CircleAvatar(
                    backgroundImage: AssetImage("assets/images/facebook.jpg")),
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/twitter.png")),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: CircleAvatar(
                      backgroundImage:
                          AssetImage("assets/images/linkedin.png")),
                ),
                CircleAvatar(
                    backgroundImage: AssetImage("assets/images/github.png")),
              ])),
          const Positioned(
              top: 200,
              left: 60,
              child: Column(children: [
                Text("Jerin",
                    style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                Text("@weberror"),
                Text(
                  "\nMobile App Developer",
                  style: TextStyle(fontSize: 25),
                )
              ])),
          Positioned(
              top: 315,
              left: 30,
              child: Container(
                height: 245,
                width: 310,
                child: ListView(
                    children: List.generate(
                        6,
                        (index) => Card(
                              color: Colors.grey[200],
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              child: ListTile(
                                  leading:
                                      Icon(icn[index], color: Colors.black),
                                  title: Text(
                                    text[index],
                                    style: TextStyle(color: Colors.black),
                                  )),
                            ))),
              ))
        ],
      ),
    );
  }
}
