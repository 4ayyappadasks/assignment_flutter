import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class home extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(width: double.infinity,height: double.infinity,color: Colors.blueAccent,
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("LOG IN SUCESS",style:GoogleFonts.artifika(color: Colors.white,fontSize: 50,fontWeight:FontWeight.w400 )),
                ],
              ),
            ],
          )),

    );
  }
}
