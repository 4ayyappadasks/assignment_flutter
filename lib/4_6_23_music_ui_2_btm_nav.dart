import 'package:assignment_flutter/4_6_23_music_ui_2_playlist.dart';
import 'package:assignment_flutter/4_6_23_music_ui_2_search.dart';
import 'package:assignment_flutter/4_6_23_music_ui_2_setting.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';

import '4_6_23_music_ui_2_home.dart';

void main() {
  runApp(MaterialApp(home: msk_ui_2(), debugShowCheckedModeBanner: false));
}

class msk_ui_2 extends StatefulWidget {
  const msk_ui_2({Key? key}) : super(key: key);

  @override
  State<msk_ui_2> createState() => _msk_ui_2State();
}

class _msk_ui_2State extends State<msk_ui_2> {
  var src = [
    msk_ui_2_home(),
    msk_ui_2_search(),
    msk_ui_2_playlist(),
    msk_ui_2_setting()
  ];
  var index= 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(
            child: Text(
              "Musify",
              style: GoogleFonts.adventPro(color: Colors.purpleAccent[50]),
            ),
          )),
      bottomNavigationBar: SlidingClippedNavBar(backgroundColor: Colors.black,
          barItems: 
          [
            BarItem(title: "home", icon: Icons.home),
            BarItem(title: "search", icon: Icons.search),
            BarItem(title: "playlist]", icon: Icons.book),
            BarItem(title: "setting", icon: Icons.more_horiz)
          ],
          selectedIndex: index,
          onButtonPressed:(tapindex)
          {setState(() {
            index= tapindex;
          });}
          , activeColor: Colors.purple,
          inactiveColor: Colors.white,
      ),
        body: Center(child: src[index])
    );
  }
}
