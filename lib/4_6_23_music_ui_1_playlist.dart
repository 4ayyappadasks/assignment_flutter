import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class msk_ui extends StatefulWidget {
  const msk_ui({Key? key}) : super(key: key);

  @override
  State<msk_ui> createState() => _msk_uiState();
}

class _msk_uiState extends State<msk_ui> {
  var imgs = [
    "assets/images/musicui1_1.jpg",
    "assets/images/musicui1_2.jpg",
    "assets/images/musicui1_3.jpg",
    "assets/images/musicui1_4.jpg",
    "assets/images/musicui1_5.jpg",
    "assets/images/musicui1_6.jpg",
    "assets/images/musicui1_1.jpg",
    "assets/images/musicui1_2.jpg",
    "assets/images/musicui1_3.jpg",
    "assets/images/musicui1_4.jpg",
    "assets/images/musicui1_5.jpg",
    "assets/images/musicui1_6.jpg",
  ];
  var msk_names = [
    "Top 50",
    "pop music",
    "Lofi REmix",
    "M+IKE",
    "Car MUSIC",
    "TIk TOK misic",
    "Top 50",
    "pop music",
    "Lofi REmix",
    "M+IKE",
    "Car MUSIC",
    "TIk TOK misic",
  ];
  var clr = [
    Colors.black,
    Colors.blue,
    Colors.white,
    Colors.white,
    Colors.yellow,
    Colors.red,
    Colors.black,
    Colors.blue,
    Colors.white,
    Colors.white,
    Colors.yellow,
    Colors.red,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(color: Colors.black),
          child: GridView.builder(
            itemCount: 12,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 40, mainAxisSpacing: 40),
            itemBuilder: (context, index) {
              return Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          fit: BoxFit.fill, image: AssetImage(imgs[index]))),
                  child: Center(
                      child: Text(
                    msk_names[index],
                    style: GoogleFonts.adamina(color: clr[index],fontSize: 25),
                  )));
            },
          )),
    );
  }
}
