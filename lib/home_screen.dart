import 'dart:math';

import 'package:calculator/bmi_brain.dart';
import 'package:calculator/constans.dart';
import 'package:calculator/rcontainer.dart';
import 'package:calculator/result_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class my_app extends StatefulWidget {
  const my_app({super.key});
  @override
  State<my_app> createState() => _AState();
}

Color malecolor = colori;
Color femalecolor = colori;
double height = 165;
int weight = 65;
int Age = 20;

class _AState extends State<my_app> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark),
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(
            child: Text(
              'BMI_CALCULATOR',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: GestureDetector(
                    onTap: () {
                      setState(() {
                        malecolor = colorA;
                        femalecolor = colori;
                        print('male');
                      });
                    },
                    child: rcontainer(
                      mycolor: malecolor,
                      mychild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.male,
                            color: Colors.white,
                            size: 70,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Male',
                            style: TextStyle(
                                fontSize: 25,
                                color: Color(0xff8d8e98),
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  )),
                  Expanded(
                      child: GestureDetector(
                    onTap: () {
                      setState(() {
                        femalecolor = colorA;
                        malecolor = colori;
                        print('female');
                      });
                    },
                    child: rcontainer(
                      mycolor: femalecolor,
                      mychild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.female,
                            color: Colors.white,
                            size: 70,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Female',
                            style: TextStyle(
                                fontSize: 25,
                                color: Color(0xff8d8e98),
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  )),
                ],
              ),
            ),
            Expanded(
              child: rcontainer(
                mycolor: colori,
                mychild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('HEIGHT',
                        style: TextStyle(fontSize: 25, color: Colors.white)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${height.toInt()}',
                          style: TextStyle(fontSize: 70, color: Colors.white),
                        ),
                        Text('CM',
                            style: TextStyle(fontSize: 20, color: Colors.white))
                      ],
                    ),
                    Slider(
                        thumbColor: Colors.white,
                        activeColor: const Color.fromARGB(255, 30, 118, 233),
                        value: height,
                        min: 120,
                        max: 220,
                        onChanged: (newvalue) {
                          setState(() {
                            height = newvalue;
                          });
                        })
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: rcontainer(
                    mycolor: colori,
                    mychild: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'WEIGHT',
                          style:
                              TextStyle(fontSize: 25, color: Color(0xff8d8e98)),
                        ),
                        Text(
                          '$weight',
                          style: TextStyle(fontSize: 50, color: Colors.white),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FilledButton(
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                style: FilledButton.styleFrom(
                                    backgroundColor:
                                        Color.fromARGB(255, 255, 255, 255),
                                    shape: CircleBorder(),
                                    padding: EdgeInsets.all(15)),
                                child: FaIcon(FontAwesomeIcons.minus)),
                            FilledButton(
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                style: FilledButton.styleFrom(
                                    backgroundColor:
                                        Color.fromARGB(255, 255, 255, 255),
                                    shape: CircleBorder(),
                                    padding: EdgeInsets.all(15)),
                                child: FaIcon(
                                  FontAwesomeIcons.plus,
                                )),
                          ],
                        )
                      ],
                    ),
                  )),
                  Expanded(
                      child: rcontainer(
                    mycolor: colori,
                    mychild: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Age',
                          style:
                              TextStyle(fontSize: 25, color: Color(0xff8d8e98)),
                        ),
                        Text(
                          '$Age',
                          style: TextStyle(fontSize: 50, color: Colors.white),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FilledButton(
                                onPressed: () {
                                  setState(() {
                                    Age--;
                                  });
                                },
                                style: FilledButton.styleFrom(
                                    backgroundColor:
                                        Color.fromARGB(255, 255, 255, 255),
                                    shape: CircleBorder(),
                                    padding: EdgeInsets.all(15)),
                                child: FaIcon(FontAwesomeIcons.minus)),
                            FilledButton(
                              onPressed: () {
                                setState(() {
                                  Age++;
                                });
                              },
                              style: FilledButton.styleFrom(
                                  backgroundColor:
                                      Color.fromARGB(255, 255, 255, 255),
                                  shape: CircleBorder(),
                                  padding: EdgeInsets.all(15)),
                              child: FaIcon(FontAwesomeIcons.plus),
                            )
                          ],
                        )
                      ],
                    ),
                  )),
                ],
              ),
            ),
            Builder(builder: (context) {
              return ElevatedButton(
                onPressed: () {
                  BmiBrain bmi = BmiBrain(Height: height, Weight: weight);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => result_screen(
                          TitleText: bmi.getTextTitle(),
                          description: bmi.getdescriptionText(),
                          bmiResult: bmi.CalcBMI(),
                        ),
                      ));
                },
                style: FilledButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 0, 110, 255),
                ),
                child: Container(
                  child: Center(
                      child: Text(
                    'CALCULATOR YOUR BMI',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  )),
                  height: 40,
                  margin: EdgeInsets.all(5),
                ),
              );
            })
          ],
        ),
      ),
    );
  }
}
