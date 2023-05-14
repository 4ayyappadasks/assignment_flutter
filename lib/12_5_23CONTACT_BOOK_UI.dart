import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home:Contact()),);
}
class Contact extends StatelessWidget {

  var names = ["ajmi","arun","gopika","gopi krishna","ijas","jk"];
  var number = ["1234556789","1234556789","1234556789","1234556789","1234556789","1234556789"];
  var images = ["assets/images/tomandjerry1.jpg","assets/images/tomandjerry2.jpg",
                "assets/images/tomandjerry3.jpg","assets/images/tomandjerry4.png",
                "assets/images/tomandjerry5.jpg","assets/images/tomandjerry6.jpg"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("CONTACTS")),
    body:ListView.builder(itemBuilder: (context,intex)
    {
      return Card(
          child: ListTile(
            title: Text("${names[intex]}"),
            subtitle: Text("${number[intex]}"),
              leading: CircleAvatar(backgroundImage: AssetImage(images[intex])),
            trailing: Wrap(children:
            [
              Icon(Icons.call),
              Padding(
                padding: const EdgeInsets.only(left: 30,right: 30),
                child: Icon(Icons.message),
              ),
              Icon(Icons.arrow_forward_ios_rounded)
            ]),
              ));
    },
    itemCount: names.length,)
    );
  }
}
