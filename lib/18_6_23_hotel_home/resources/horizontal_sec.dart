import 'package:flutter/material.dart';


class hotelp1 extends StatelessWidget {
  final Color col;
  final Widget text;
  final Widget icn;
  const hotelp1({Key? key,
    required this.col,
    required this.text,
    required this.icn}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
          width: 140,
          height: 140,
          decoration: BoxDecoration(
            color: col,
              borderRadius: BorderRadiusDirectional.circular(10)),
      child: Center(
        child: ListTile(
          title:icn,
          subtitle: text,
        ),
      ));
  }
}
