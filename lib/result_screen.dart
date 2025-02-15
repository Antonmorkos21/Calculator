import 'package:calculator/constans.dart';
import 'package:calculator/main.dart';
import 'package:calculator/rcontainer.dart';
import 'package:calculator/colorbutton.dart';
import 'package:flutter/material.dart';

class result_screen extends StatelessWidget {
  const result_screen(
      {super.key,
      required this.TitleText,
      required this.description,
      required this.bmiResult});
  final String TitleText;
  final String description;
  final double bmiResult;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('CALCULATOR YOUR BMI'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            'YOUR Result',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: rcontainer(
              mycolor: colorA,
              mychild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    TitleText,
                    style: TextStyle(
                        fontSize: 35,
                        color: Colors.green,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    bmiResult.toStringAsFixed(1),
                    style: TextStyle(
                        fontSize: 60,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'NORMAL BMI range',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '18.5-25kg/m2',
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    description,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          redButton(
            title: 'RE-CALCULATOR YOUR BMI',
            onTap: () => Navigator.of(context).pop(),
          ),
        ],
      ),
    );
  }
}
