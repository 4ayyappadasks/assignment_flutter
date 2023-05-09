import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Logins extends StatefulWidget {

  @override
  State<Logins> createState() => _LoginState();
}

class _LoginState extends State<Logins> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LOGIN STATEFUL"),
      ),
      body: SingleChildScrollView(
        child: Form(
            child: Column(
              children: [
                Text("log in",style: GoogleFonts.artifika(fontSize: 100,color: Colors.blueAccent)),
              TextFormField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email))),
              TextFormField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.password),suffixIcon: Icon(Icons.visibility_off))),
              ElevatedButton(onPressed: (){}, child: Text("log in hear")),
              ElevatedButton(onPressed: (){}, child: Text("signup hear"))
              ],
            ) //88
            ),
      ),
    );
  }
}
