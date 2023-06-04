import 'package:flutter/material.dart';

class ffz_home extends StatefulWidget {
  const ffz_home({Key? key}) : super(key: key);

  @override
  State<ffz_home> createState() => _ffz_homeState();
}

class _ffz_homeState extends State<ffz_home> {
  var first_list = [
    "vegetables",
    "fruits",
    "tools",
    "safty items",
    "curry poweders",
    "vegetables",
    "fruits",
    "tools",
    "safty items",
    "curry poweders",
  ];

  var img_list=
      [
        "assets/images/tomandjerry1.jpg",
        "assets/images/vegetables-character-collection-vector.jpg.jpg",
      ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: double.infinity,
          width: double.infinity,
        ),
        Positioned(
            child: Container(
          width: double.infinity,
          height: 50,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return SizedBox(
                  width: 180,
                  child: Card(
                    color: Colors.green[100],
                    shape: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.green),
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                        child: Text(
                      first_list[index],
                      style: TextStyle(color: Colors.green[800]),
                    )),
                  ),
                );
              },
              itemCount: 10),
        )),
        Positioned(
            top: 50,
            child: Container(height: 200,width: 100,
              child: ListView.builder(itemCount: 2,itemBuilder: (context, index) {
                return Card(child: ListTile(title: Image.asset(img_list[index])));
              },),
            )),
        Positioned(
            left: 10,
            width: 340,
            top: 260,
            child: Container(
              height: 60,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all(color: Colors.black26)),
              child: Row(children: [Column(children: [Icon(Icons.timer),Text("fgbd")],)]),
            ))
      ],
    ));
  }
}
