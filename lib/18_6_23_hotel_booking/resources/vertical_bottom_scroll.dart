import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: btmsc(),
//   ));
// }

class btmsc extends StatefulWidget {
  const btmsc({Key? key}) : super(key: key);

  @override
  State<btmsc> createState() => _btmscState();
}

class _btmscState extends State<btmsc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(itemCount: 4,itemBuilder: (context, index) =>
            Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 170,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    alignment: Alignment.bottomLeft,
                    image: AssetImage(
                        "assets/images/blue-evil-devil-fantasy-art-artwork-2500x3875-art-fantasy-art-hd-art-wallpaper-preview.jpg")),
                borderRadius: BorderRadiusDirectional.circular(15)),
            child: Padding(
                padding: EdgeInsets.only(left: 160),
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ListTile(
                      title: Text("sdbf"),
                      subtitle: Text("cbg fgxdgbfhbcbfgdfy"),
                      trailing: ElevatedButton(onPressed: (){}, child: Text("BOOK NOW")),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 115),
                      child: Text("kjxcfihuifj",style: TextStyle(fontWeight:FontWeight.bold ,fontSize: 20,color: Colors.blue)),
                    ),
                    Row(children: [
                      IconButton(onPressed: (){}, icon:Icon(Icons.car_crash_rounded,color: Colors.blue,)),
                      IconButton(onPressed: (){}, icon:Icon(Icons.bed_sharp,color: Colors.blue)),
                      IconButton(onPressed: (){}, icon:Icon(Icons.wine_bar_sharp,color: Colors.blue)),
                      IconButton(onPressed: (){}, icon:Icon(Icons.wifi,color: Colors.blue))],)
                  ],
                )),
          ),
        ),)
    );
  }
}
