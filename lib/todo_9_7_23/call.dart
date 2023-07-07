import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class call extends StatefulWidget {
  const call({Key? key}) : super(key: key);

  @override
  State<call> createState() => _callState();
}

class _callState extends State<call> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
            child: Lottie.asset("assets/animation/40431-speak-to-call-us-now.json"),)),
    );
  }
}
