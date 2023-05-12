import 'dart:async';

import 'package:flutter/material.dart';

import '12_5_23CONTACT_BOOK_UI.dart';


void main() {
  runApp(
    MaterialApp(debugShowCheckedModeBanner: false ,home: MyApp()),
  );
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Contact()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(color: Colors.black87),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/Google_Contacts_icon_(2022).svg.png",height: 100,width: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(style:TextStyle(fontSize: 50,color: Colors.white),"Contact"),
                    IconButton(onPressed: (){Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Contact(),));},
                        icon: Icon(Icons.account_circle_outlined,color: Colors.white,))
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
