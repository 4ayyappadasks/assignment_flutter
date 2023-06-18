


import 'package:flutter/material.dart';

import 'asg_demo.dart';

class placedetails extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final placeId = ModalRoute.of(context)?.settings.arguments;

    final placeFromList =
    places.firstWhere((element) => element["id"] == placeId);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[700],
        title: Text("My Wishlist"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 300,
                width: 200,
                child: Image.asset(placeFromList["image"])),
            Text("rs.${placeFromList["price"]}",style: TextStyle(color: Colors.green)),
            Text(placeFromList["description"])
          ],
        ),
      ),
    );
  }
}
