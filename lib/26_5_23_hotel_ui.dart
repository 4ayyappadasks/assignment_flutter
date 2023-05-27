import 'package:flutter/material.dart';

import '26_5_23_hotel_ui_lke.dart';
import '26_5_23_hotel_ui_seting.dart';
import '26_5_29_hotel_ui_fav.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: hotelui(),
  ));
}

class hotelui extends StatefulWidget {
  const hotelui({Key? key}) : super(key: key);

  @override
  State<hotelui> createState() => _hoteluiState();
}

class _hoteluiState extends State<hotelui> {
  var src = [
    mainp(),
    uilke(),
    setings()
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          onTap: (tapindex)
            {
              setState(() {
                index=tapindex;
              });
            },

          type: BottomNavigationBarType.fixed,
           selectedItemColor: Colors.purple,
            currentIndex: index,
            items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "favourite"),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: "setting")
        ]),
      body: Center(child: src[index]),
      );
  }
}

///
//               Column(children: [
//               Row(children: [
//                 Icon(Icons.star,color: Colors.purple),Icon(Icons.star,color: Colors.purple),
//                 Icon(Icons.star,color: Colors.purple),Icon(Icons.star,color: Colors.purple),
//                 Icon(Icons.star,color: Colors.grey),
//               ]),
//             Text("8km from lulu mall",style: TextStyle(color: Colors.grey),)],)
