// import 'package:flutter/material.dart';
//
// class ProductDetails extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     //To fetch the values and store it in the productId variable
//     //This takes values passed from arguments through routes
//     final productId = ModalRoute.of(context)?.settings.arguments;
//
//     //Here it first takes a value of Id from the main list and compares
//     //it with the one that we have already saved in the productID
//     //The datatype of this variable is map
//     final productFromList =
//     products.firstWhere((element) => element["id"] == productId);
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("My Wishlist"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image.network(productFromList["image1"]),
//             Text("${productFromList["price"]}"),
//             Text(productFromList["description"])
//           ],
//         ),
//       ),
//     );
//   }
// }


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
