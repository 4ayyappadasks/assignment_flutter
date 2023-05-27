import 'package:flutter/material.dart';

class uilke extends StatefulWidget {
  const uilke({Key? key}) : super(key: key);

  @override
  State<uilke> createState() => _uilkeState();
}

class _uilkeState extends State<uilke> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Container(height: double.infinity,width: double.infinity,color: Colors.black,child: Icon(Icons.favorite,color: Colors.white,),)),
    );
  }
}
