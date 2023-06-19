import 'package:assignment_flutter/18_6_23_hotel_booking/resources/dummy.dart';
import 'package:assignment_flutter/18_6_23_hotel_booking/resources/top_scroll.dart';
import 'package:flutter/material.dart';

import '../resources/appbar.dart';
import '../resources/vertical_bottom_scroll.dart';

// void main() {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: p1(),
//   ));
// }

class p1 extends StatefulWidget {
  const p1({Key? key}) : super(key: key);

  @override
  State<p1> createState() => _p1State();
}

class _p1State extends State<p1> {
  var rate = [
    "180/night",
    "190/night",
    "200/night",
    "210/night",
    "220/night",
    "220/night",
    "230/night",
    "240/night",
    "250/night",
    "260/night",
    "270/night",
  ];
  var names = [
    "Crown plasa",
    "king",
    "queen",
    "star",
    "great",
    "rose",
    "lifa",
    "kik spot",
    "star kingdom",
    "nation",
  ];
  var img =[
    "assets/images/ho1.jpg",
    "assets/images/ho2.jpg",
    "assets/images/ho3.jpg",
    "assets/images/ho4.jpg",
    "assets/images/ho5.jpg",
    "assets/images/ho6.jpg",
    "assets/images/ho7.jpg",
    "assets/images/ho8.jpg",
    "assets/images/ho9.jpg",
    "assets/images/ho10.jpg",
  ];
  var img2 =[
    "assets/images/hoo1.jpg",
    "assets/images/hoo2.jpg",
    "assets/images/hoo3.jpg",
    "assets/images/hoo4.jpg",
    "assets/images/hoo5.jpg",
    "assets/images/hoo6.jpg",
    "assets/images/hoo7.jpg",
    "assets/images/hoo8.jpg",
    "assets/images/hoo9.jpg",
    "assets/images/ho1.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          apbar(),
          Text("POPULAR HOTEL",style: TextStyle(color: Colors.black,fontSize: 20)),
          Container(
            width:MediaQuery.of(context).size.width,
            height: 310,
            child:
              ListView(
                scrollDirection: Axis.horizontal,
                children: dum.map((e) =>topsc(
                  rate: Text(e["rate"],style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.blue)),
                  tittle: Text(e["name"],style: TextStyle(fontSize: 20)),
                  subtittle: Text(e["des"]),
                  rating: Text("${e["ratings"]}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.blue)),
                  immg: AssetImage(e["img"]),)
              ).toList(),)
            // ListView.builder(
            //   scrollDirection: Axis.horizontal,
            //   itemCount: 20,
            //   itemBuilder: (context, index) => topsc(),),
          ),
          Text("HOTEL PACKAGE",style: TextStyle(color: Colors.black,fontSize: 20)),
          Container(
            height:2000,
            width:MediaQuery.of(context).size.width,
          child: ListView(
            physics: NeverScrollableScrollPhysics(),
          children: dum.map((e) => btmsc(
            tittle:Text(e["name"],style: TextStyle(fontSize: 20)),
            subtittle: Text(e["des"]),
            rate: Text("${e["rate"]}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.blue)),
            im: AssetImage(e["imgg"]),)).toList()),)
        ],),
      )
    );
  }
}
