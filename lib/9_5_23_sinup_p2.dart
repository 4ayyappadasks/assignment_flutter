import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '9_5_23_login_p3.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(width: double.infinity,height: double.infinity,
        child: (SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 140),
                child: Text("Sign up",
                    style: GoogleFonts.artifika(fontSize: 35,color: Colors.black)
                    ),
              ),
              Text("create an account , its free"),

              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    hintText: "Email id",prefixIcon: Icon(Icons.email)),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 4,top: 8),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      hintText: "Password",prefixIcon: Icon(Icons.visibility_off)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5,bottom: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      hintText: "Confirm password",prefixIcon: Icon(Icons.visibility_off)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: SizedBox(width: 300,height: 50,
                  child: ElevatedButton(onPressed: (){},
                      style: ButtonStyle(
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)
                              )
                          )
                      ), child: Text("sign up")),
                ),
              ),
              TextButton(onPressed: ()
              {Navigator.of(context).push(MaterialPageRoute(builder: (context) => logp()
              )
              );},
                  child: Text("already an user, login")),
            ],
          ),)
        ),
      ),
    );
  }
}
