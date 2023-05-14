import 'package:assignment_flutter/15_5_23_whatapp_chat.dart';
import 'package:flutter/material.dart';

import '15_5_23_whatapp_status.dart';

class whatsapp_call extends StatefulWidget {
  const whatsapp_call({Key? key}) : super(key: key);

  @override
  State<whatsapp_call> createState() => _whatsapp_callState();
}

class _whatsapp_callState extends State<whatsapp_call> {

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

  var isons = [
    Icon(Icons.video_call),Icon(Icons.video_call),Icon(Icons.video_call),
    Icon(Icons.video_call),Icon(Icons.video_call),Icon(Icons.video_call),
    Icon(Icons.video_call),Icon(Icons.video_call),Icon(Icons.video_call),
    Icon(Icons.video_call),Icon(Icons.video_call),Icon(Icons.video_call),
    Icon(Icons.video_call),Icon(Icons.video_call),Icon(Icons.video_call),
    Icon(Icons.video_call),Icon(Icons.video_call)];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.green[700],
          title: Text("call")),
      floatingActionButton: Row(mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
              onPressed: (){Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => whatsapp_status(),));},child: Text("status")),
          FloatingActionButton(
          onPressed: (){Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => whatsapp_chat(),));},child: Text("chat"),)
                 ],
      ),

    body:ListView.builder(itemBuilder: (context, index)
    {
      return ListTile(
        title: Text("${name[index]}"),
        subtitle: Text("${time[index]}"),
        leading: CircleAvatar(backgroundImage: AssetImage(image[index])),
        trailing: (isons[index]),
      );
    },
    itemCount: name.length,),
    );
  }
}
