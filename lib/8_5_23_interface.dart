

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '8_5_33_loginpage.dart';

class Interface extends StatelessWidget {
  const Interface({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor:Colors.indigo[900],
        body:
        Container(width: double.infinity,height: double.infinity,

          child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10,bottom: 35),
              child: Image.asset( "assets/images/6100287_don't panic_keep calm_meditation_yoga_icon.png",width: 100,height: 100),
            ),

            Text(
                "HI THEIR!",style:GoogleFonts.allan(color: Colors.white, fontWeight:FontWeight.w700,fontSize: 40)
            ),
            Text(
              "bgn hgnghn nh fgb ",style: GoogleFonts.allan(fontSize: 8,fontWeight: FontWeight.normal,color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 0,top: 250),
              child: SizedBox(
                  height: 50,
                  width: 250,
                  child: ElevatedButton(onPressed: (){}, child: Text("login"))),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 0,top: 15),
              child: SizedBox(
                height:50,
                width: 250,
                child: ElevatedButton(onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => Login()));} ,child: Text("signin"),)),)
          ],
        ),
        )
    );
  }
}
