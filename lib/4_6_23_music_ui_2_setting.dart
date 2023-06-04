import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class msk_ui_2_setting extends StatefulWidget {
  const msk_ui_2_setting({Key? key}) : super(key: key);

  @override
  State<msk_ui_2_setting> createState() => _msk_ui_2_settingState();
}

class _msk_ui_2_settingState extends State<msk_ui_2_setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(width: double.infinity,height: double.infinity,
            decoration: BoxDecoration(color: Colors.black),
            child: Text("setting",style: GoogleFonts.adventPro(color: Colors.white)),
          )),);
  }
}
