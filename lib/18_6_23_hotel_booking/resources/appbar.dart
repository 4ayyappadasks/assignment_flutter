import 'package:flutter/material.dart';
// void main()
// {
//   runApp(MaterialApp(debugShowCheckedModeBanner: false,home: apbar(),));
// }
class apbar extends StatefulWidget {
  const apbar({Key? key}) : super(key: key);

  @override
  State<apbar> createState() => _apbarState();
}

class _apbarState extends State<apbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
