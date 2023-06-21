import 'package:assignment_flutter/18_6_23_hotel_home/mian/dummy.dart';
import 'package:assignment_flutter/18_6_23_hotel_home/resources/horizontal_sec.dart';
import 'package:assignment_flutter/18_6_23_hotel_home/resources/vetical.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: mainp1(),
  ));
}

class mainp1 extends StatefulWidget {
  const mainp1({Key? key}) : super(key: key);

  @override
  State<mainp1> createState() => _mainp1State();
}

class _mainp1State extends State<mainp1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(child: Text("TYPE YOUR LOCATION")),
          bottom: PreferredSize(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadiusDirectional.circular(40)),
                    child: Center(
                      child: TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            hintText: "search  hear",
                            border: InputBorder.none),
                      ),
                    )),
              ),
              preferredSize: Size.fromHeight(80))),



      body: Center(
          child: SingleChildScrollView(
            child: Column(children: [
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Container(
                width: 400,
                height: 155,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: data.map((e) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: hotelp1(
                        col: e["h_col"],
                        text: Text(e["h_tittle"],textAlign: TextAlign.center),
                        icn:Icon(e["icn"])),
                  )).toList(),)
                ),
              ),
            ),
              pp2(),
      ]),
          )),
    );
  }
}
