import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(debugShowCheckedModeBanner:false,home: images() ));
}

class images extends StatelessWidget {

var icons =
[Icon(Icons.adb),Icon(Icons.account_circle),Icon(Icons.account_circle_outlined),
  Icon(Icons.account_balance),Icon(Icons.access_alarm),Icon(Icons.access_alarms),Icon(Icons.accessibility_sharp),
  Icon(Icons.account_tree_rounded),Icon(Icons.ad_units_rounded),Icon(Icons.add_alert),

  Icon(Icons.adb),Icon(Icons.account_circle),Icon(Icons.account_circle_outlined),
  Icon(Icons.account_balance),Icon(Icons.access_alarm),Icon(Icons.access_alarms),Icon(Icons.accessibility_sharp),
  Icon(Icons.account_tree_rounded),Icon(Icons.ad_units_rounded),Icon(Icons.add_alert),

  Icon(Icons.adb),Icon(Icons.account_circle),Icon(Icons.account_circle_outlined),
  Icon(Icons.account_balance),Icon(Icons.access_alarm),Icon(Icons.access_alarms),Icon(Icons.accessibility_sharp),
  Icon(Icons.account_tree_rounded),Icon(Icons.ad_units_rounded),Icon(Icons.add_alert)];

var colors = [
  (Colors.orange),(Colors.red),(Colors.green),
  (Colors.indigo),(Colors.blue),(Colors.cyanAccent),
  (Colors.cyan),(Colors.teal),(Colors.tealAccent),

  (Colors.orange),(Colors.red),(Colors.green),
  (Colors.indigo),(Colors.blue),(Colors.cyanAccent),
  (Colors.cyan),(Colors.teal),(Colors.tealAccent),

  (Colors.orange),(Colors.red),(Colors.green),
  (Colors.indigo),(Colors.blue),(Colors.cyanAccent),
  (Colors.cyan),(Colors.teal),(Colors.tealAccent)];

  @override
  Widget build(BuildContext context) {
    return Scaffold(body:
    Padding(
      padding: const EdgeInsets.only(right: 20,left: 20),
      child: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 30,
          crossAxisSpacing: 20,
          mainAxisExtent: 70),

        children: List.generate(27,
                (index) => Container(
                  decoration: BoxDecoration(color: colors[index],
                      boxShadow:[BoxShadow(
                        color: Colors.white,
                        blurRadius: 5,
                        spreadRadius: 3,
                        offset: Offset(-2, -8))],borderRadius: BorderRadius.circular(20),),

                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(child: icons[index]),
                      Center(child: Text("Heart \nShaker",style: TextStyle(fontSize: 20),))
                    ],
                  ),
                )),
      ),
    )
       );
  }
}

