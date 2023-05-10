import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("register page"),
      ),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(color: Colors.pink),
          SizedBox(
              height: 50,
              width: 300,
              child: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.vibration),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5))),
              ))
        ],
      )),
    );
  }
}
