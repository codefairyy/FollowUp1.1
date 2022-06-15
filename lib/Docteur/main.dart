import 'package:flutter/material.dart';

import 'LandingPage/LandingPage.dart';
import 'package:follow_up_11/Docteur/Navbar/Navbar.dart';

void main(List<String> args) {
  runApp(const MyApp3());
}

class MyApp3 extends StatelessWidget {
  const MyApp3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Follow Up',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: "Montserrat"),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color.fromRGBO(255, 255, 255, 1),
                Color.fromRGBO(255, 255, 255, 1)
              ]),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: const <Widget>[
              Navbar(),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
                child: LandingPage(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
