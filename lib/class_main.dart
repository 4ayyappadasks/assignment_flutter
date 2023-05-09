import 'dart:async';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//import '9_5_23_statefull_login.dart';
import 'class_loginpage.dart';


void main()
{
  runApp(
    MaterialApp(home: MyApp()),
  );
}
class MyApp extends StatefulWidget
{
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override

  void initState() {
     Timer(Duration(seconds: 5), () {Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginPage()));
     });
    super.initState();
  }
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(backgroundColor: Colors.black,
      body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration:BoxDecoration(
              gradient:LinearGradient(
                  colors: [Colors.orange,
                    Colors.purpleAccent],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)) ,
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                  "assets/images/image-removebg-preview.png"),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(style:GoogleFonts.artifika(color: Colors.white,fontSize: 50,fontWeight: FontWeight.w500),"Tivi"),
                  //Text(style: TextStyle(color: Colors.white,fontSize: 50,),"dey"),
                  Text(style:GoogleFonts.artifika(color: Colors.white,fontSize: 50,fontWeight: FontWeight.w200),"dey"),
                ],
              ),
            ],
          ),
        ) ,

    );
  }
}