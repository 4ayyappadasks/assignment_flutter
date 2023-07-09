import 'package:assignment_flutter/todo_9_7_23/call.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:lottie/lottie.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox("contacts");

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: hivep1(),
  ));
}

class hivep1 extends StatefulWidget {
  const hivep1({Key? key}) : super(key: key);

  @override
  State<hivep1> createState() => _hivep1State();
}

class _hivep1State extends State<hivep1> {
  @override
  void initState() {
    refresh();
    super.initState();
  }

  TextEditingController name = TextEditingController();
  TextEditingController number = TextEditingController();
  TextEditingController email = TextEditingController();
  final hive_st = Hive.box("contacts");
  List<Map<String, dynamic>> data = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[100],
      appBar: AppBar(
        actions: [PopupMenuButton(itemBuilder: (context) {
          return [
            PopupMenuItem(child: GestureDetector(onTap: () {
              showsheet(null);
            },child: Text("new todo")))
          ];
        },)],
        bottom: PreferredSize(child: Container(), 
            preferredSize: Size.fromHeight(50)),
          backgroundColor: Colors.indigo[900],
          title: Center(child: Text("TODO"),)),
      body: SafeArea(
          child: Center(
            child: data.isEmpty
                ? Text("NO CONTACTS")
                : ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                return
                    GestureDetector(onLongPress: () {
                      return showsheet(data[index]["id"]);
                    },
                      child: ExpansionTile(
                          trailing: IconButton(onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => call(),));
                          },
                              icon: Icon(Icons.call)),
                          title: Text(data[index]["name"]),
                        children: [
                          Text("name:${data[index]["name"]}"),
                          SizedBox(height: 10,),
                          Text("number:${data[index]["number"]}"),
                          SizedBox(height: 10,),
                          Text("email:${data[index]["email"]}"),
                          SizedBox(height: 10,),
                          SizedBox(
                            width: 100,
                            child: IconButton(
                                onPressed: () {
                                  deletes(data[index]["id"]);
                                },
                                icon: Icon(Icons.delete)),
                          )
                        ]
                      ),
                    );
              },
            ),
          )),
    );
  }

  void showsheet(int? id) {

    if(id != null)
    {
      final uptdata = data.firstWhere((element) => element["id"]==id);
      name.text = uptdata["name"];
      number.text=uptdata["number"];
      email.text=uptdata["email"];
    }

    showModalBottomSheet(backgroundColor: Colors.indigo[100],
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return SingleChildScrollView(
          child: Container(height: 900,
            padding: EdgeInsets.only(
                top: 10,
                left: 10,
                right: 10,
                bottom: MediaQuery.of(context).viewInsets.bottom + 120),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                      maxLength: 15,controller: name,decoration: InputDecoration(hintText: "name")),
                  TextField(
                      maxLength: 10,keyboardType: TextInputType.number,controller: number,decoration: InputDecoration(hintText: "number")),
                  TextField(
                      maxLength: 15,controller: email,decoration: InputDecoration(hintText: "email")),
                  SizedBox(height: 30,),
                  ElevatedButton(onPressed: () async{
                    id==null

                        ?Create({"name": name.text.trim(),"email":email.text.trim(), "number": number.text.trim()})


                        :Update(id,{"name":name.text,"email":email.text.trim(),"number":number.text});

                  },
                      child: id==null?Text("create"):Text("update"))
                ]),
          ),
        );
      },
    );
  }

  Future<void>Create(Map<String, dynamic> crt) async
  {
    await hive_st.add(crt);
    name.text = "";
    number.text = "";
    email.text = "";
    Navigator.of(context).pop();
    refresh();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Lottie.asset("assets/animation/59865-confirmation-tick.json")));
  }

  Future<void>Update(ids, Map<String, dynamic> upt) async
  {
    await hive_st.put(ids, upt);
    name.text = "";
    number.text = "";
    email.text = "";
    Navigator.of(context).pop();
    refresh();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Lottie.asset("assets/animation/98109-updating-animation.json")));
  }

  Future<void> deletes(dlt) async
  {
    await hive_st.delete(dlt);
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Lottie.asset("assets/animation/87669-delete-animation.json")));
    refresh();
  }


  Future<void> refresh() async
  {
    final stg = hive_st.keys.map((e)
    {
      final stg1 = hive_st.get(e);
      return
        {
          "id":e,
          "name":stg1["name"],
          "number":stg1["number"],
          "email":stg1["email"]
        };
    }
    ).toList();

    setState(() {
      data = stg.reversed.toList();
    });
  }

}
