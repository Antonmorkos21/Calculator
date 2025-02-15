import 'package:flutter/material.dart';

class redButton extends StatelessWidget {
  const redButton({super.key, required this.title, required this.onTap});
  final String title;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 0, 110, 255),
            borderRadius: BorderRadius.circular(16.0)),
        child: Center(
            child: Text(
          title,
          style: TextStyle(fontSize: 18, color: Colors.white),
        )),
        height: 50,
        margin: EdgeInsets.all(5),
      ),
    );
  }
}
