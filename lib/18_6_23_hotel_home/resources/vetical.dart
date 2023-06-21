import 'package:flutter/material.dart';
import 'package:flutter_pannable_rating_bar/flutter_pannable_rating_bar.dart';

// void main() {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: pp2(),
//   ));
// }

class pp2 extends StatefulWidget {


   const pp2({Key? key,
}) : super(key: key);

  @override
  State<pp2> createState() => _pp2State();
}

class _pp2State extends State<pp2> {
  var img = [
    "assets/images/hoo1.jpg",
    "assets/images/hoo2.jpg",
    "assets/images/hoo3.jpg"
  ];
  double rating = 0.0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: List.generate(3, (index) =>           Container(
          height: 400,
          decoration: BoxDecoration(border: Border.all(color: Colors.black)),
          child: Column(children: [

            /// image container

            Container(
                child: Container(width: MediaQuery.of(context).size.width,
                  child: Column(crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.star_border,color: Colors.white,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 155,right: 10),
                          child: Container(
                            height: 40,
                            width: 40,
                            color: Colors.grey,
                            child: Center(child: Text("\$40")),),
                        )
                      ]),
                ),
                height: 250,
                decoration: BoxDecoration(
                    image: DecorationImage(fit: BoxFit.cover,
                        image: AssetImage(img[index])))),

            ///text feild 1

            ListTile(title: Text("hotel 1"),subtitle: Text("location of hotel")),


            ///rating

            Padding(
              padding: const EdgeInsets.only(right: 300),
              child: Text("rate yourself",style: TextStyle(color: Colors.blue)),
            ),
            Row(
              children: [
                PannableRatingBar(
                  rate: rating, items: List.generate(5, (index) => RatingWidget(
                    selectedColor: Colors.yellow,unSelectedColor: Colors.blue,
                    child: Icon(Icons.star, size: 30,
                    ))),
                  onHover: (value) {
                    setState(() {
                      rating = value;
                    });
                  },),
                Text("(${rating})"),
                Text("  220 reviews")
              ],
            )
          ]),
        ),)
      ),
    );
  }
}
