import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Guest extends StatelessWidget {
  const Guest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text("guest page"),
          backgroundColor: Colors.green),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.greenAccent,
            ),
            Text(
              "hello welcome",
              style: GoogleFonts.artifika(fontSize: 40),
            )
          ],
        ),
      ),
    );
  }
}
