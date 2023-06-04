import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class msk_ui_2_home extends StatefulWidget {
  const msk_ui_2_home({Key? key}) : super(key: key);

  @override
  State<msk_ui_2_home> createState() => _msk_ui_2_homeState();
}

class _msk_ui_2_homeState extends State<msk_ui_2_home> {
  var subtitl = [
    "taylor swift",
    "sam smith,kim peters",
    "Rihanna",
    "DAx",
    "David Gutta",
    "taylor swift",
    "sam smith,kim peters",
    "Rihanna",
    "DAx",
    "David Gutta",
    "taylor swift",
    "sam smith,kim peters",
    "Rihanna",
    "DAx",
    "David Gutta",
    "taylor swift",
    "sam smith,kim peters",
    "Rihanna",
    "DAx",
    "David Gutta",
  ];
  var titl = [
    "hero",
    "Unholy",
    "Lift me UP",
    "Depresion",
    "i'am good",
    "hero",
    "Unholy",
    "Lift me UP",
    "Depresion",
    "i'am good",
    "hero",
    "Unholy",
    "Lift me UP",
    "Depresion",
    "i'am good",
    "hero",
    "Unholy",
    "Lift me UP",
    "Depresion",
    "i'am good",
  ];
  var imgd = [
    "assets/images/musicui1_1.jpg",
    "assets/images/musicui1_4.jpg",
    "assets/images/musicui1_3.jpg",
    "assets/images/musicui1_4.jpg",
    "assets/images/musicui1_5.jpg",
    "assets/images/musicui1_1.jpg",
    "assets/images/musicui1_4.jpg",
    "assets/images/musicui1_3.jpg",
    "assets/images/musicui1_4.jpg",
    "assets/images/musicui1_5.jpg",
    "assets/images/musicui1_1.jpg",
    "assets/images/musicui1_4.jpg",
    "assets/images/musicui1_3.jpg",
    "assets/images/musicui1_4.jpg",
    "assets/images/musicui1_5.jpg",
    "assets/images/musicui1_1.jpg",
    "assets/images/musicui1_4.jpg",
    "assets/images/musicui1_3.jpg",
    "assets/images/musicui1_4.jpg",
    "assets/images/musicui1_5.jpg",
  ];
  var topsc = [
    "assets/images/musicui1_1.jpg",
    "assets/images/musicui1_3.jpg",
    "assets/images/musicui1_5.jpg",
    "assets/images/musicui1_6.jpg",
    "assets/images/musicui1_1.jpg",
    "assets/images/musicui1_3.jpg",
    "assets/images/musicui1_5.jpg",
    "assets/images/musicui1_6.jpg",
  ];
  var topsc_word = [
    "pop music",
    "Lofi REmix",
    "M+IKE",
    "Car MUSIC",
    "TIk TOK misic",
    "pop music",
    "Lofi REmix",
    "M+IKE",
    "Car MUSIC",
    "TIk TOK misic",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(color: Colors.black),
        ),
        Positioned(left: 15,
            child: Text(
          "Suggested Playlist",
          style: GoogleFonts.akayaKanadaka(color: Colors.pink[100],fontSize: 20),
        )),
        Positioned(
            top: 25,
            child: Container(
              width: 360,
              height: 175,
              decoration: BoxDecoration(color: Colors.black),
              child: GridView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 8,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1, mainAxisSpacing: 5, crossAxisSpacing: 5),
                itemBuilder: (context, index) => ListTile(
                    subtitle: Text(topsc_word[index],
                        style: TextStyle(color: Colors.white)),
                    tileColor: Colors.black,
                    title: Image.asset(
                      topsc[index],
                      fit: BoxFit.cover,
                    )),
              ),
            )),
        Positioned(top: 177,left: 15,
            child: Text(
              "Recomended for you",
              style: GoogleFonts.akayaKanadaka(color: Colors.pink[100],fontSize: 20),
            )),
        Positioned(
            top: 200,
            child: Container(
              width: 380,
              height: 350,
              decoration: BoxDecoration(color: Colors.black),
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                        tileColor: Colors.black,
                        title: Text(titl[index],
                            style:
                                GoogleFonts.adventPro(color: Colors.pink[100])),
                        leading: Image.asset(imgd[index]),
                        subtitle: Text(subtitl[index],
                            style: GoogleFonts.adventPro(color: Colors.white)),
                        trailing: Container(
                          width: 60,
                          child: Row(
                            children: [
                              Icon(Icons.star_border, color: Colors.pink[100]),
                              Icon(Icons.download_outlined,
                                  color: Colors.pink[100])
                            ],
                          ),
                        )),
                  );
                },
              ),
            ))
      ]),
    );
  }
}
