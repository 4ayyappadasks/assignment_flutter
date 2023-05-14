import 'dart:async';

import 'package:assignment_flutter/15_5_23_whatapp_chat.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: Wsplash()));
}
class Wsplash extends StatefulWidget {
  const Wsplash({Key? key}) : super(key: key);

  @override
  State<Wsplash> createState() => _WsplashState();
}

class _WsplashState extends State<Wsplash> {
  void initState()
  {
    Timer(Duration(seconds: 5), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(
        builder: (context) => whatsapp_chat(),));});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      body:SafeArea(
          child: Container(height: double.infinity,width: double.infinity,color: Colors.black54,
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/whatsapp logo.png",width: 90,height: 90,),
              ],
            ),
          )
      )
    );
  }
}
