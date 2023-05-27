import 'package:flutter/material.dart';

class setings extends StatefulWidget {
  const setings({Key? key}) : super(key: key);

  @override
  State<setings> createState() => _setingsState();
}

class _setingsState extends State<setings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Container(width: double.infinity,height: double.infinity,color: Colors.black,child: Icon(Icons.settings,color: Colors.white),)),
    );
  }
}
