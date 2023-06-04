import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class msk_ui_2_playlist extends StatefulWidget {
  const msk_ui_2_playlist({Key? key}) : super(key: key);

  @override
  State<msk_ui_2_playlist> createState() => _msk_ui_2_playlistState();
}

class _msk_ui_2_playlistState extends State<msk_ui_2_playlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(width: double.infinity,height: double.infinity,
            decoration: BoxDecoration(color: Colors.black),
            child: Text("playlist",style: GoogleFonts.adventPro(color: Colors.white)),
          )),);
  }
}
