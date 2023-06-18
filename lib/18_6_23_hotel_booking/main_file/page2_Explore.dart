import 'package:flutter/material.dart';

class p2 extends StatefulWidget {
  const p2({Key? key}) : super(key: key);

  @override
  State<p2> createState() => _p2State();
}

class _p2State extends State<p2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Icon(Icons.search_rounded,size: 50)),);
  }
}
