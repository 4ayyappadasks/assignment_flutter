import 'package:flutter/material.dart';
import 'asg_demo.dart';
import 'asg_details.dart';

void main() {
  runApp(MaterialApp(
    home: ProductScreen(),
    routes: {
      "second": (context) => placedetails(),
    },
  ));
}

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Trip Founder"),
        backgroundColor: Colors.indigo[700],
        bottom: PreferredSize(
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadiusDirectional.circular(20)),
                child: TextField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.search),
                    hintText: "search your hevan",
                      border: InputBorder.none),)), preferredSize:Size.fromHeight(50)),
      ),
      body: ListView(
        padding: EdgeInsets.all(15),
        children: places
            .map(
              (element) => ListTile(
                 trailing: Text("rating\t:${element["rating"]}",style: TextStyle(color: Colors.blue)),
              leading:Text("rs.${element["price"]}",style: TextStyle(color: Colors.green)),
              title: Image.asset("${element["image"]}"),
              subtitle:Text("${element["name"]}"),
              onTap: () {
                Navigator.of(context)
                    .pushNamed("second", arguments: element["id"]);
              }),
        )
            .toList(),
      ),
    );
  }

  gotoNext(BuildContext context, elementId) {
    Navigator.of(context).pushNamed("second", arguments: elementId);
  }
}