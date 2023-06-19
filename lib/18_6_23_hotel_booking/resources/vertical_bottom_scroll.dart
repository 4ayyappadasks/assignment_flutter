import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: btmsc(),
//   ));
// }

class btmsc extends StatefulWidget {
  final AssetImage im;
  final Text tittle;
  final Text subtittle;
  final Text rate;
  final Text? rating;
  const btmsc({Key? key,
    required this.tittle,
    required this.subtittle,
    required this.rate,
     this.rating,
    required this.im}) : super(key: key);

  @override
  State<btmsc> createState() => _btmscState();
}

class _btmscState extends State<btmsc> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 170,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.grey[300],
            image: DecorationImage(
                alignment: Alignment.bottomLeft,
                image: widget.im),
            borderRadius: BorderRadiusDirectional.circular(15)),
        child: Padding(
            padding: EdgeInsets.only(left: 160),
            child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ListTile(
                  title:widget.tittle,
                  subtitle: widget.subtittle,
                  trailing: ElevatedButton(onPressed: (){}, child: Text("BOOK NOW")),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 115),
                  child: widget.rate,
                ),
                Row(children: [
                  IconButton(onPressed: (){}, icon:Icon(Icons.car_crash_rounded,color: Colors.blue,)),
                  IconButton(onPressed: (){}, icon:Icon(Icons.bed_sharp,color: Colors.blue)),
                  IconButton(onPressed: (){}, icon:Icon(Icons.wine_bar_sharp,color: Colors.blue)),
                  IconButton(onPressed: (){}, icon:Icon(Icons.wifi,color: Colors.blue))],)
              ],
            )),
      ),
    );
  }
}
