import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '9_5_23_sinup_p2.dart';

class logp extends StatefulWidget {
  const logp({Key? key}) : super(key: key);

  @override
  State<logp> createState() => _logpState();
}

class _logpState extends State<logp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          height: double.infinity,
          child: (SingleChildScrollView(
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 15,top: 140),
                  child: Text("Login",style: GoogleFonts.artifika(fontSize: 50)),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10,),
                  child: Text("welcome back get loged in ,have fun"),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: TextFormField(decoration: InputDecoration(border:OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email),hintText: "Email")),
                ),
                TextFormField(decoration: InputDecoration(border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.visibility_off),hintText: "Password")),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: SizedBox(height: 50,width: 300,
                    child: ElevatedButton(onPressed: (){},
                        style: ButtonStyle(
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius:BorderRadius.circular(35)
                                )
                            )
                        ), child: Text("Login")),
                  ),
                ),
                TextButton(onPressed: (){Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Signup()));}, child: Text("Sign up")
                    ),
              ],
            ),)
          ),
      ),

    );
  }
}
