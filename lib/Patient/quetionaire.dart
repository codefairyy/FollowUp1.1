import 'dart:convert';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:follow_up_11/Docteur/main.dart';
import 'package:follow_up_11/Patient/page1.dart';
import 'package:follow_up_11/QstMed.dart';
import 'package:follow_up_11/rapport.dart';

import '../qstInsu.dart';

class MyApp1 extends StatefulWidget {
  const MyApp1({Key? key}) : super(key: key);

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp1> {
  String text = 'Votre Nom Complet SVP';
  static late String newTaskTitle;
  @override
  Widget build(BuildContext context) {
    String text = 'Votre Nom Complet';
    return MaterialApp(
      home: Scaffold(
        body: Q3(),
      ),
    );
  }
}

class Q3 extends StatelessWidget {
  String text = 'Avez vous prie vos medicaments?';
  static late String newTaskTitle;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF7986CB),
        title: const Text(''),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              text,
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 38.0,
            ),
            //Q4medic

            FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyApp2()),
                );
              },
              child: Text(
                'Medicament',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.indigo,
            ),
            const SizedBox(
              height: 38.0,
            ),
            //Q5insuline
            FlatButton(
                child: Text(
                  'Insuline',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                color: Colors.indigo,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp4()),
                  );
                }),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBarFb5(),
    ));
  }
}
