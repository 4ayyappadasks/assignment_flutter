// import 'package:flutter/material.dart';
//
// class whatsapp_chat extends StatefulWidget {
//   const whatsapp_chat({Key? key}) : super(key: key);
//
//   @override
//   State<whatsapp_chat> createState() => _whatsapp_chatState();
// }
//
// class _whatsapp_chatState extends State<whatsapp_chat> {
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(length: 3,
//       child: Scaffold(appBar: AppBar(title: Text("whatsapp"),
//         bottom: TabBar(
//             tabs:[
//                   Tab(text: "chat"),
//                   Tab(text: "status"),
//                   Tab(text: "call")
//                  ]
//     )
//       ),
//           body: TabBarView(
//             children: []
//           )
//       )
//     );
//   }
// }

import 'package:assignment_flutter/15_5_23_whatapp_call.dart';
import 'package:assignment_flutter/15_5_23_whatapp_status.dart';
import 'package:flutter/material.dart';

class whatsapp_chat extends StatefulWidget {



  @override
  State<whatsapp_chat> createState() => _whatsapp_chatState();

}

class _whatsapp_chatState extends State<whatsapp_chat> {
  var name = ["appu","anu","ammu","achu","abhi","aravi","fasal",
    "appu","anu","ammu","achu","abhi","aravi","fasal",
    "appu","anu","ammu","achu","abhi","aravi","fasal"];
  var images = ["assets/images/tomandjerry1.jpg","assets/images/tomandjerry2.jpg","assets/images/tomandjerry3.jpg",
                "assets/images/tomandjerry4.png","assets/images/tomandjerry5.jpg","assets/images/tomandjerry6.jpg",
                "assets/images/the-dk-photography-KSgK6Only9I-unsplash.jpg",
    "assets/images/tomandjerry1.jpg","assets/images/tomandjerry2.jpg","assets/images/tomandjerry3.jpg",
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
          title: Text("chat")),
      floatingActionButton: Row(mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
              onPressed: (){Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => whatsapp_call(),));},child: Text("call")),
          FloatingActionButton(
            onPressed: (){Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => whatsapp_status(),));},child: Text("status"),)
        ],
      ),


      body: ListView.builder(itemBuilder: (Context,index)
          {
            return ListTile(
              title: Text("${name[index]}"),
              subtitle: Text("hi da"),
              leading: CircleAvatar(backgroundImage: AssetImage(images[index]),),
              trailing: Text("12/10/2023"),
            );
          },
     itemCount: name.length,
      )
    );
  }
}

