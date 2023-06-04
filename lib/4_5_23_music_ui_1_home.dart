import 'package:flutter/material.dart';

class msk_ui1 extends StatefulWidget {
  const msk_ui1({Key? key}) : super(key: key);

  @override
  State<msk_ui1> createState() => _msk_ui1State();
}

class _msk_ui1State extends State<msk_ui1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
          decoration: BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                  image: AssetImage("assets/images/musicui1_1.jpg"),fit: BoxFit.cover))),
    ));
  }
}
