import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class msk_ui_2_search extends StatefulWidget {
  const msk_ui_2_search({Key? key}) : super(key: key);

  @override
  State<msk_ui_2_search> createState() => _msk_ui_2_searchState();
}

class _msk_ui_2_searchState extends State<msk_ui_2_search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(width: double.infinity,height: double.infinity,
        decoration: BoxDecoration(color: Colors.black),
        child: Text("search",style: GoogleFonts.adventPro(color: Colors.white)),
      )),
    );
  }
}
