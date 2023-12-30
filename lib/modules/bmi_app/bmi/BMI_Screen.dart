import 'dart:math';

import 'package:flutter/material.dart';
import 'package:new_flutter_udemy2/shared/components/components.dart';

import '../bmi_result/BMI_Result_Screen.dart';

class BMIScreen extends StatefulWidget {
  const BMIScreen({Key? key}) : super(key: key);

  @override
  State<BMIScreen> createState() => _BMI_ScreenState();
}

class _BMI_ScreenState extends State<BMIScreen> {
  int age = 20;
  int weight = 60;
  double height = 120;
  bool isMale = true;
  String? gender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsetsDirectional.all(20),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: isMale ? Colors.blue : Colors.grey[400],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.male,
                              size: 80,
                            ),
                            Text(
                              'Male',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: isMale ? Colors.grey[400] : Colors.blue,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.female,
                              size: 80,
                            ),
                            Text(
                              'female',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
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
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey[400],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Height',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          '${height.round()}',
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          'cm',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Slider(
                      value: height,
                      //mouseCursor: MaterialStateMouseCursor.clickable,
                      onChanged: (value) {
                        setState(() {
                          height = value;
                        });
                      },
                      max: 200,
                      min: 80,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'Age',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Text(
                            '$age',
                            style: const TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                                mini: true,
                                heroTag: 'age-',
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                child: const Icon(Icons.remove)),
                            const SizedBox(
                              width: 20,
                            ),
                            FloatingActionButton(
                                mini: true,
                                heroTag: 'age+',
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                child: const Icon(Icons.add)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'Weight',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Text(
                            '$weight',
                            style: const TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                                mini: true,
                                heroTag: 'weight-',
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                child: const Icon(Icons.remove)),
                            const SizedBox(
                              width: 20,
                            ),
                            FloatingActionButton(
                                mini: true,
                                heroTag: 'weight+',
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                child: const Icon(Icons.add)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
          Container(
            width: double.infinity,
            color: Colors.blue,
            child: MaterialButton(
              height: 50,
              onPressed: () {
                var result = weight / pow((height / 100), 2);
                result = (result.round() < 20 ? 19 : result);
                navigateTo(context,widget:BMIResult(
                  age: age,
                  result: result.round(),
                  gender: isMale ? 'Male' : 'Female',
                  weight: weight,
                ) );
              },
              child: const Text(
                'Calculate',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
  //var result =weight/pow((height/100),2)
}
