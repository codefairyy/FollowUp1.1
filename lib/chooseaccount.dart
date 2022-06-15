// ignore_for_file: deprecated_member_use

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:follow_up_11/Docteur/page1DOC.dart';
import 'package:follow_up_11/Patient/page1.dart';

import 'Docteur/logindoct.dart';

import 'Patient/Login_Screen.dart';

class welcome extends StatelessWidget {
  const welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Column(children: [
          Expanded(
              flex: 5,
              child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 87, 53, 187),
                        Colors.deepPurpleAccent
                      ],
                    ),
                  ),
                  child: Column(children: [
                    SizedBox(
                      height: 100.0,
                    ),
                    CircleAvatar(
                      radius: 65.0,
                      backgroundImage: AssetImage('assets/images/profile.png'),
                      backgroundColor: Color.fromARGB(216, 202, 189, 252),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    FlatButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage1()),
                          );
                        },
                        child: Text("Docteur")),
                    SizedBox(
                      height: 20.0,
                    ),
                    CircleAvatar(
                      radius: 65.0,
                      backgroundImage: AssetImage('assets/images/profile1.png'),
                      backgroundColor: Color.fromARGB(216, 202, 189, 252),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    FlatButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()),
                          );
                        },
                        child: Text("Patient")),
                  ]))),
        ])
      ],
    ));
  }
}
