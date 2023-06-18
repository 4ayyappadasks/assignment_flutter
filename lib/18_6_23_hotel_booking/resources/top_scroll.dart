import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: topsc(),
//   ));
// }

class topsc extends StatefulWidget {
  const topsc({Key? key}) : super(key: key);

  @override
  State<topsc> createState() => _topscState();
}

class _topscState extends State<topsc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: 290,
        child: ListView.builder(
          itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) =>
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
          height: 300,
          width: 200,
          decoration: BoxDecoration(
            image: DecorationImage(alignment: Alignment.topCenter,image:AssetImage("assets/images/25_5_23_listui_delhi.png")),
              color: Colors.purpleAccent,
              borderRadius: BorderRadiusDirectional.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 130),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                            children: [
                              ListTile(
                                title: Text("sdvsd"),
                                subtitle: Text("dscd"),
                              ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.values[3],
                            children: [
                            Text("dnvk",style: TextStyle(fontSize: 20,color: Colors.blue)),
                            Text("ccx xc ",style: TextStyle(fontSize: 20,color: Colors.blue)),
                          ],)
                        ]),
                      ),
                    ),
        ),
                ),)
      ),
    );
  }
}
