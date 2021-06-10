import 'dart:math';

import 'package:flutter/material.dart';

import 'bmiresault_screen.dart';

class BMICalculater extends StatefulWidget {
  @override
  _BMICalculaterState createState() => _BMICalculaterState();
}

class _BMICalculaterState extends State<BMICalculater> {
  bool isMale = true;
  double height =120;
  int age = 20;
  int weight = 40;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text(
          "BMI Calculater",
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          //first
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale =true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: isMale? Colors.red : Colors.grey[400],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage('images/malee.png'),
                              height: 85.0,
                              width: 85.0,
                            ),
                            Text(
                              "MALE",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 25.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale=false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: isMale ? Colors.grey[400]: Colors.red,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage('images/female.png'),
                              height: 90.0,
                              width: 90.0,
                            ),
                            Text(
                              "FEMALE",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 25.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          //second
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "HEIGHT",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25.0,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          "${height.round()}",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                            fontSize: 25.0,
                          ),
                        ),
                        Text(
                          "CM",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 10.0,
                          ),
                        ),
                      ],
                    ),
                    Slider(
                      value: height,
                      min: 80.0,
                      max: 220.0,
                      activeColor: Colors.red,
                      inactiveColor: Colors.redAccent,
                      onChanged: (value) {setState(() {
                        height =value;
                      });},
                    ),
                  ],
                ),
              ),
            ),
          ),
          //third
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.grey[400],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "AGE",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25.0,
                          ),
                        ),
                        Text(
                          "$age",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                            fontSize: 25.0,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              onPressed: () {setState(() {
                               age--;
                              });},
                              backgroundColor: Colors.redAccent,
                              heroTag: 'age--',

                              mini: true,
                              child: Icon(Icons.minimize),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            FloatingActionButton(
                              onPressed: () {setState(() {
                               age++;
                              });},
                              backgroundColor: Colors.redAccent,
                              heroTag: 'age++',

                              mini: true,
                              child: Icon(Icons.add),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
                  SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                      child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.grey[400],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "WEIGHT",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25.0,
                          ),
                        ),
                        Text(
                          "$weight",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                            fontSize: 25.0,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              heroTag: 'weight--',

                              mini: true,
                              backgroundColor: Colors.redAccent,
                              child: Icon(Icons.minimize),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            FloatingActionButton(
                              onPressed: () {setState(() {
                                weight++;
                                }
                              );},
                              heroTag: 'weight++',
                              mini: true,
                              backgroundColor: Colors.redAccent,
                              child: Icon(Icons.add),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
                ],
              ),
            ),
          ),
          Container(
            height: 50.0,
            width: double.infinity,
            child: MaterialButton(
              onPressed: () {
                var result = weight / pow(height/100 , 2);
                print(result.round());
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>BmiResult(result: result.round(), age: age, isMale: isMale)));
              },
              color: Colors.red,
              child: Text(
                "CALCULATE",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
