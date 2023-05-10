import 'package:assignment_flutter/class_register_page.dart';
import 'package:assignment_flutter/guest.dart';
import 'package:assignment_flutter/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  String username = "appu";
  String password = "123appu";
  int otpm = 123;

  TextEditingController usr = TextEditingController();
  TextEditingController psd = TextEditingController();
  TextEditingController otp = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login page")),
      body: SingleChildScrollView(
        child: Column(children: [
          Image.asset("assets/images/aperture-sharp-icon.png",
              height: 70, width: 70),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
                controller: usr,
                decoration: InputDecoration(
                    hintText: "email,mobile no",
                    labelText: "username",
                    border: OutlineInputBorder())),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
                controller: psd,
                decoration: InputDecoration(
                    hintText: "secret key",
                    labelText: "password",
                    border: OutlineInputBorder())),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
                controller: otp,
                decoration: InputDecoration(
                    hintText: "sent to your mobile no",
                    labelText: "otp",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)))),
          ),
          ElevatedButton(
              onPressed: () {
                /// save entered data to another string
                String name = usr.text.trim();
                String pss = psd.text.trim();

                if (name != "" && pss != "") {
                  if (name == username && pss == password) {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => home(),
                    ));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("error in user name and password")));
                  }
                } else {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text("field in zero")));
                }
              },
              child: Text("LOGIN")),
          TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Register(),
                ));
              },
              child: Text("not a user , get your account")),
          TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Guest(),
                ));
              },
              child: Text("skip enter as gust")),
        ]),
      ),
    );
  }
}
