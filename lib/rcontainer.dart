import 'package:flutter/material.dart';

class rcontainer extends StatelessWidget {
  const rcontainer({super.key, required this.mychild, required this.mycolor});
  final Widget mychild;
  final Color mycolor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: mycolor, borderRadius: BorderRadius.circular(16.0)),
      child: mychild,
    );
  }
}
