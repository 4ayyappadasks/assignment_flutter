import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: topsc(),
//   ));
// }

class topsc extends StatefulWidget {
  final AssetImage immg;
  final Text tittle;
  final Text subtittle;
  final Text rate;
  final Text rating;
  const topsc({Key? key,
    required this.tittle,
    required this.subtittle,
    required this.rate,
    required this.rating,
    required this.immg,
   }) : super(key: key);

  @override
  State<topsc> createState() => _topscState();
}

class _topscState extends State<topsc> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 300,
        width: 200,
        decoration: BoxDecoration(
            image: DecorationImage(alignment: Alignment.topCenter,image:widget.immg),
            color: Colors.grey[300],
            borderRadius: BorderRadiusDirectional.circular(20)),
        child: Padding(
          padding: const EdgeInsets.only(top: 130),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
                children: [
                  ListTile(
                    title: widget.tittle,
                    subtitle: widget.subtittle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.values[3],
                    children: [
                      widget.rate,
                      widget.rating,
                      // Text("fgdfg",style: TextStyle(fontSize: 20,color: Colors.blue)),
                      // Text("ccx xc ",style: TextStyle(fontSize: 20,color: Colors.blue)),
                    ],)
                ]),
          ),
        ),
      ),
    );
  }
}
