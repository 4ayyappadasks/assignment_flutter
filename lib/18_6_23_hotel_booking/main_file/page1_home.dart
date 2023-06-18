import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: p1(),
  ));
}

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
      body: SafeArea(
          child: ListView(children: [
            /// appbar
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              child: Column(children: [
                ListTile(
                  title:
                  Text("Hello @ks", style: TextStyle(color: Colors.grey)),
                  subtitle: Text("Find your FAV HoTel",
                      style: TextStyle(color: Colors.black)),
                  trailing: CircleAvatar(
                      backgroundImage: AssetImage(
                          "assets/images/25_5_23_listui_delhi.png")),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [BoxShadow(color: Colors.grey,spreadRadius: 2,blurRadius: 30)],
                        borderRadius: BorderRadiusDirectional.circular(10),
                        color: Colors.grey[300],),
                      height: 50,
                      width: 350,
                      child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            border: InputBorder.none,
                            hintText: "search your hotel"),
                      )),
                )
              ]),
            ),
            /// top scroll
            Container(
                width: MediaQuery.of(context).size.width,
                height: 290,
                child: ListView.builder(
                  itemCount: 9,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) =>
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 300,
                          width: 200,
                          decoration: BoxDecoration(boxShadow: [BoxShadow(
                              color: Colors.black,
                            blurRadius: 1,
                            blurStyle: BlurStyle.outer
                          )],
                              image: DecorationImage(alignment: Alignment.topCenter,image:AssetImage(img2[index])),
                              borderRadius: BorderRadiusDirectional.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 130),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                  children: [
                                    ListTile(
                                      title: Text(names[index]),
                                      subtitle: Text("5 star hotel"),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.values[3],
                                      children: [
                                        Text(rate[index],style: TextStyle(fontSize: 20,color: Colors.blue)),
                                        Text("ccx xc",style: TextStyle(fontSize: 20,color: Colors.blue)),
                                      ],)
                                  ]),
                            ),
                          ),
                        ),
                      ),)
            ),
            Container(
              height: 1700,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(physics: NeverScrollableScrollPhysics(),
                itemCount: 9,itemBuilder: (context, index) =>
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 170,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(boxShadow: [BoxShadow(
                          color: Colors.black,
                          blurRadius: 1,
                          spreadRadius: 0,
                          blurStyle: BlurStyle.outer
                      )],
                          image: DecorationImage(
                              alignment: Alignment.bottomLeft,
                              image: AssetImage(img[index])),
                          borderRadius: BorderRadiusDirectional.circular(15)),
                      child: Padding(
                          padding: EdgeInsets.only(left: 160),
                          child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ListTile(
                                title: Text(names[index]),
                                subtitle: Text("5 star hotel"),
                                trailing: ElevatedButton(onPressed: (){}, child: Text("BOOK NOW")),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 115),
                                child: Text(rate[index],style: TextStyle(fontWeight:FontWeight.bold ,fontSize: 20,color: Colors.blue)),
                              ),
                              Row(children: [
                                IconButton(onPressed: (){}, icon:Icon(Icons.car_crash_rounded,color: Colors.blue,)),
                                IconButton(onPressed: (){}, icon:Icon(Icons.bed_sharp,color: Colors.blue)),
                                IconButton(onPressed: (){}, icon:Icon(Icons.wine_bar_sharp,color: Colors.blue)),
                                IconButton(onPressed: (){}, icon:Icon(Icons.wifi,color: Colors.blue))],)
                            ],
                          )),
                    ),
                  ),),
            )
          ],),
      ),
    );
  }
}
