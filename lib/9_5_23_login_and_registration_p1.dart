
import 'package:assignment_flutter/9_5_23_sinup_p2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '9_5_23_login_p3.dart';


void main()
{
  runApp(
  MaterialApp(home: MyApp()),
  );
}


class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState(

    );
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 1),
              child: Text("HELLO THEIR!",
                  style: GoogleFonts.artifika(color: Colors.black,fontSize: 30)),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 70,top: 10),
              child: Text("Autimatic idenrtity verification which enables you to verify your identity",
                  style: GoogleFonts.artifika(color: Colors.black,fontSize: 9)),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: Image.asset("assets/images/aperture-sharp-icon.png",
                  height: 150, width: 150),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: SizedBox(width: 300,height: 50,
                child: ElevatedButton(style:ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35))),
                    onPressed: (){Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => logp()));}, child: Text("Login")
                ),
              ),
            ),
           SizedBox(width: 300,height: 50,
             child: ElevatedButton(style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35))),
                 onPressed: (){Navigator.of(context).push(
                     MaterialPageRoute(
                       builder:(context) => Signup()));}, child: Text("Signup")
             ),
           )
          ],
        ),
      ),

    );
  }
}
