import 'package:assignment_flutter/29_5_23_Farmers_fresh_zone1.dart';
import 'package:assignment_flutter/29_5_23_Farmers_fresh_zone2.dart';
import 'package:assignment_flutter/29_5_23_Farmers_fresh_zone3.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Farmersfreshzone_bottom(),
  ));
}

class Farmersfreshzone_bottom extends StatefulWidget {
  const Farmersfreshzone_bottom({Key? key}) : super(key: key);

  @override
  State<Farmersfreshzone_bottom> createState() =>
      _Farmersfreshzone_bottomState();
}

class _Farmersfreshzone_bottomState extends State<Farmersfreshzone_bottom> {
  int index = 0;
  var scrc = [ffz_home(), ffz_cart(), ffz_account()];
  var loc = [
    "assets/images/25_5_23_listui_delhi.png",
    "assets/images/25_5_23_listui_finland.png",
    "assets/images/25_5_23_listui_London.jpg",
    "assets/images/25_5_23_listui_newyork.jpg",
  ];
  var loctxt = ["delhi", "finland", "london", "newyork"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Container(
                  width: 340,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(9)),
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintText: "search for vegetables,fruits..."),
                  )),
            ),
            preferredSize: Size.fromHeight(50)),
        backgroundColor: Colors.green[600],
        title: Text("FARMERS FRESH ZONE", style: TextStyle(fontSize: 14)),
        actions: [
          Row(
            children: [
              Icon(Icons.location_on_outlined),
              Text(loctxt[2]),
              IconButton(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return ListView(
                          children: List.generate(
                              4,
                              (index) => ListTile(
                                    title: Image.asset(loc[index],width: 60,height: 60),
                                subtitle: Text(loctxt[index]),
                                  )),
                        );
                      },
                    );
                  },
                  icon: Icon(Icons.arrow_drop_down))
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (tapindexx) {
            setState(() {
              index = tapindexx;
            });
          },
          currentIndex: index,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: "cart"),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_sharp), label: "account")
          ]),
      body: Center(child: scrc[index]),
    );
  }
}
