import 'package:assignment_flutter/18_6_23_hotel_booking/main_file/page1_home.dart';
import 'package:assignment_flutter/18_6_23_hotel_booking/main_file/page2_Explore.dart';
import 'package:assignment_flutter/18_6_23_hotel_booking/main_file/page3_profile.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: btm(),));
}
class btm extends StatefulWidget {
  const btm({Key? key}) : super(key: key);

  @override
  State<btm> createState() => _btmState();
}

class _btmState extends State<btm> {
  var index = 0;
  var src = [
    p1(),
    p2(),
    p3()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap: (tapindex)
          {
            setState(() {
              index = tapindex;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search_rounded),label: "Explore"),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
          ]),body: SafeArea(child: Center(child: src[index])),);
  }
}
