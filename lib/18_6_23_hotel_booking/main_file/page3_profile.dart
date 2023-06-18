import 'package:flutter/material.dart';

class p3 extends StatefulWidget {
  const p3({Key? key}) : super(key: key);

  @override
  State<p3> createState() => _p3State();
}

class _p3State extends State<p3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Icon(Icons.person,size: 50)),);
  }
}
