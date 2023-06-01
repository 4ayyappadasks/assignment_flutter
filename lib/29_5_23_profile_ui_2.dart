import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: profile1_ui(),
  ));
}

class profile1_ui extends StatefulWidget {
  const profile1_ui({Key? key}) : super(key: key);

  @override
  State<profile1_ui> createState() => _profile1_uiState();
}

class _profile1_uiState extends State<profile1_ui> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
          title: Center(child: Text("Profile")),
          actions: [
            PopupMenuButton(
              itemBuilder: (context) {
                return [
                  PopupMenuItem(
                      child: TextButton(
                          onPressed: () {},
                          child: Text("setting",
                              style: TextStyle(color: Colors.black)))),
                  PopupMenuItem(
                      child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Edit",
                            style: TextStyle(color: Colors.black),
                          ))),
                  PopupMenuItem(
                      child: TextButton(
                          onPressed: () {},
                          child: Text("Coppy to clipboard",
                              style: TextStyle(color: Colors.black)))),
                  PopupMenuItem(
                      child: TextButton(
                          onPressed: () {},
                          child: Text("New contact",
                              style: TextStyle(color: Colors.black)))),
                ];
              },
            )
          ],
        ),
        body: Stack(
          children: [
            Container(width: double.infinity, height: double.infinity),
            Positioned(
                child: Container(
              height: 180,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      image: AssetImage(
                          "assets/images/25_5_23_listui_delhi.png"))),
            )),
            Positioned(
                top: 125,
                left: 120,
                child: CircleAvatar(
                  radius: 65,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 63,
                    backgroundImage:
                        AssetImage("assets/images/25_5_23_listui_finland.png"),
                  ),
                )),
            Positioned(
                top: 145,
                left: 10,
                child: CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 35,
                  child: Icon(Icons.message),
                )),
            Positioned(
                top: 145,
                left: 280,
                child: CircleAvatar(
                  backgroundColor: Colors.blue,
                  radius: 35,
                  child: Icon(Icons.add),
                )),
            Positioned(top:265,left: 130,child:Column(
              children: [
                Text("AYYAPPADAS KS"),
                Text("model / superstar",style:TextStyle(color: Colors.blue,fontSize: 11) ,)
              ],
            ))
          ],
        ));
  }
}
