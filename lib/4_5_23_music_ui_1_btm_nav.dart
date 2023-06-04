
import 'package:assignment_flutter/4_5_23_music_ui_3.dart';
import 'package:assignment_flutter/4_5_23_music_ui_4.dart';
import 'package:flutter/material.dart';
import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';

import '4_5_23_music_ui_1.dart';
import '4_5_23_music_ui_2.dart';

void main() {
  runApp(MaterialApp(
    home: mskui_btm_nav(),
    debugShowCheckedModeBanner: false,
  ));
}

class mskui_btm_nav extends StatefulWidget {
  const mskui_btm_nav({Key? key}) : super(key: key);

  @override
  State<mskui_btm_nav> createState() => _mskui_btm_navState();
}

class _mskui_btm_navState extends State<mskui_btm_nav> {
  int index = 0;
  var screeens =
  [

    msk_ui1(),
    msk_ui2(),
    msk_ui(),
    msk_ui3(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(
              child: Text("Playlists",
                  style: TextStyle(color: Colors.purple[100]))),
          bottom: PreferredSize(
              child: Container(
                  width: 350,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  child: TextField(
                      decoration: InputDecoration(
                          hintText: "\t\t\tSearch...",
                          suffixIcon: Icon(Icons.search)))),
              preferredSize: Size.fromHeight(50))),
        bottomNavigationBar:SlidingClippedNavBar(
          backgroundColor: Colors.black,
          barItems:
        [
          BarItem(title: "home", icon: Icons.home_filled),
          BarItem(title: "search", icon: Icons.search),
          BarItem(title: "playlist", icon: Icons.bar_chart_outlined),
          BarItem(title: "setting", icon: Icons.more_horiz)
        ],
            selectedIndex: index
            , onButtonPressed:(tapindex)
            {
              setState(() {
                index= tapindex;
              });
            }
            , activeColor: Color(0xFFFFEBEE),
         inactiveColor: Colors.white,
        ),
      body: Center(child: screeens[index]),

    );
  }
}
