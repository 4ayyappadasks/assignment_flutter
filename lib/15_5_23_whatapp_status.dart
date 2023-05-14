import 'package:assignment_flutter/15_5_23_whatapp_call.dart';
import 'package:flutter/material.dart';

import '15_5_23_whatapp_chat.dart';

class whatsapp_status extends StatefulWidget {
  const whatsapp_status({Key? key}) : super(key: key);

  @override
  State<whatsapp_status> createState() => _whatsapp_statusState();
}

class _whatsapp_statusState extends State<whatsapp_status> {
  var name=["appu","anu","ammu","achu","abhi","aravi","fasal",
    "appu","anu","ammu","achu","abhi","aravi","fasal"];

  var time=["today,12:45pm","today,10:00am","today,09:00am",
    "yesterday","yesterday","yesterday","yesterday","yesterday",
    "yesterday","yesterday","yesterday","yesterday","yesterday","yesterday",];

  var image = ["assets/images/tomandjerry1.jpg","assets/images/tomandjerry2.jpg","assets/images/tomandjerry3.jpg",
    "assets/images/tomandjerry4.png","assets/images/tomandjerry5.jpg","assets/images/tomandjerry6.jpg",
    "assets/images/the-dk-photography-KSgK6Only9I-unsplash.jpg",
    "assets/images/tomandjerry1.jpg","assets/images/tomandjerry2.jpg","assets/images/tomandjerry3.jpg",
    "assets/images/tomandjerry4.png","assets/images/tomandjerry5.jpg","assets/images/tomandjerry6.jpg",
    "assets/images/the-dk-photography-KSgK6Only9I-unsplash.jpg"];
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.green[700],
          title: Text("status")),
      floatingActionButton: Row(mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
            onPressed: (){Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => whatsapp_chat(),));},child: Text("chat")),
        FloatingActionButton(
          onPressed: (){Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => whatsapp_call(),));},child: Text("call"),)
      ],
    ),
      body: ListView.builder(itemBuilder: (context, index)
      {
        return ListTile(

              title: Text("${name[index]}"),
          subtitle: Text("${time[index]}"),
          leading: CircleAvatar(backgroundImage: AssetImage(image[index]),),
        );
      },
      itemCount: name.length,
      ),
    );
  }
}
