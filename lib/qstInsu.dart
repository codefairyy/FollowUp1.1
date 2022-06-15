import 'dart:convert';
import 'dart:html';

import 'package:flutter/material.dart';
import 'Patient/page1.dart';
import 'package:follow_up_11/rapport.dart';
import 'package:follow_up_11/rapportinsu.dart';

class MyApp4 extends StatefulWidget {
  const MyApp4({Key? key}) : super(key: key);

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp4> {
  String text = 'Votre Nom Complet SVP';
  static late String newTaskTitle;
  @override
  Widget build(BuildContext context) {
    String text = 'Votre Nom Complet';
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
            const SizedBox(
              height: 38.0,
            ),
            Text(text,
                style: const TextStyle(
                  fontSize: 23.0,
                  color: Color.fromARGB(255, 32, 32, 32),
                  fontWeight: FontWeight.w700,
                )),
            const SizedBox(
              height: 38.0,
            ),
            TextField(
              cursorHeight: 20,
              autofocus: false,
              decoration: InputDecoration(
                labelText: 'Enter Votre nom complet',
                hintText: "Enter your Name",
                prefixIcon: const Icon(
                  Icons.arrow_circle_right,
                ),
                iconColor: Color.fromARGB(255, 3, 179, 47),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Colors.grey, width: 2),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Colors.grey, width: 1.5),
                ),
                focusedBorder: OutlineInputBorder(
                  gapPadding: 0.0,
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(
                      color: Color.fromARGB(255, 105, 54, 244), width: 1.5),
                ),
              ),
              onChanged: (newText) {
                newTaskTitle = newText;
              },
            ),
            const SizedBox(
              height: 55,
            ),
            FlatButton(
                child: Text(
                  'Next',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                color: Colors.indigo,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Q2()),
                  );
                }),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBarFb5(),
    ));
  }
}

class Q2 extends StatelessWidget {
  String text = 'Taux de glycémie?';
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
            Text(text,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                )),
            const SizedBox(
              height: 38.0,
            ),
            TextField(
              cursorHeight: 20,
              autofocus: false,
              decoration: InputDecoration(
                labelText: 'Enter içi',
                hintText: "1Z22344",
                prefixIcon: const Icon(
                  Icons.arrow_circle_right,
                ),
                iconColor: Color.fromARGB(255, 3, 179, 47),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Colors.grey, width: 2),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Colors.grey, width: 1.5),
                ),
                focusedBorder: OutlineInputBorder(
                  gapPadding: 0.0,
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(
                      color: Color.fromARGB(255, 105, 54, 244), width: 1.5),
                ),
              ),
              onChanged: (newText) {
                newTaskTitle = newText;
              },
            ),
            const SizedBox(
              height: 38,
            ),
            FlatButton(
                child: Text(
                  'Next',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                color: Colors.indigo,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Q5()),
                  );
                }),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBarFb5(),
    ));
  }
}

class Q5 extends StatelessWidget {
  String text = 'Votre Dose aujourdhui';
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
            Text(text,
                style: const TextStyle(
                  fontSize: 23.0,
                  color: Color.fromARGB(255, 32, 32, 32),
                  fontWeight: FontWeight.w700,
                )),
            const SizedBox(
              height: 38.0,
            ),
            TextField(
              cursorHeight: 20,
              autofocus: false,
              decoration: InputDecoration(
                labelText: 'Enter içi',
                hintText: "Exmpl0.22",
                prefixIcon: const Icon(
                  Icons.arrow_circle_right,
                ),
                iconColor: Color.fromARGB(255, 3, 179, 47),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Colors.grey, width: 2),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Colors.grey, width: 1.5),
                ),
                focusedBorder: OutlineInputBorder(
                  gapPadding: 0.0,
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(
                      color: Color.fromARGB(255, 105, 54, 244), width: 1.5),
                ),
              ),
              onChanged: (newText) {
                newTaskTitle = newText;
              },
            ),
            const SizedBox(
              height: 38.0,
            ),
            FlatButton(
                child: Text(
                  'Next',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                color: Colors.indigo,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Q6()),
                  );
                }),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBarFb5(),
    ));
  }
}

class Q6 extends StatelessWidget {
  String text = 'Respectez vous toujours votre régime alimentaire?';
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
            const SizedBox(
              height: 38,
            ),
            TextField(
              cursorHeight: 20,
              autofocus: false,
              decoration: InputDecoration(
                labelText: 'Enter içi',
                hintText: "Oui/non",
                prefixIcon: const Icon(
                  Icons.arrow_circle_right,
                ),
                iconColor: Color.fromARGB(255, 3, 179, 47),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Colors.grey, width: 2),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Colors.grey, width: 1.5),
                ),
                focusedBorder: OutlineInputBorder(
                  gapPadding: 0.0,
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(
                      color: Color.fromARGB(255, 105, 54, 244), width: 1.5),
                ),
              ),
              onChanged: (newText) {
                newTaskTitle = newText;
              },
            ),
            const SizedBox(
              height: 38.0,
            ),
            FlatButton(
                child: Text(
                  'Next',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                color: Colors.indigo,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Q7()),
                  );
                }),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBarFb5(),
    ));
  }
}

class Rap extends StatelessWidget {
  String text = 'Veuillez bien écrire se que vous avez pas respecter ?';
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
            TextField(
              cursorHeight: 20,
              autofocus: false,
              decoration: InputDecoration(
                labelText: '',
                hintText: "Ecrir içi",
                prefixIcon: const Icon(
                  Icons.arrow_circle_right,
                ),
                iconColor: Color.fromARGB(255, 3, 179, 47),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Colors.grey, width: 2),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Colors.grey, width: 1.5),
                ),
                focusedBorder: OutlineInputBorder(
                  gapPadding: 0.0,
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(
                      color: Color.fromARGB(255, 105, 54, 244), width: 1.5),
                ),
              ),
              onChanged: (newText) {
                newTaskTitle = newText;
              },
            ),
            const SizedBox(
              height: 50,
            ),
            FlatButton(
                child: Text(
                  'Next',
                  semanticsLabel: newTaskTitle,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                color: Colors.indigo,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Q7()),
                  );
                }),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBarFb5(),
    ));
  }
}

class Q7 extends StatelessWidget {
  String text =
      'Dans un temps prés avez vous resentie (sueur,faim,fatigue,douleur...)?';
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
            TextField(
              cursorHeight: 20,
              autofocus: false,
              decoration: InputDecoration(
                labelText: '',
                hintText: "Ecrir içi",
                prefixIcon: const Icon(
                  Icons.arrow_circle_right,
                ),
                iconColor: Color.fromARGB(255, 3, 179, 47),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Colors.grey, width: 2),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Colors.grey, width: 1.5),
                ),
                focusedBorder: OutlineInputBorder(
                  gapPadding: 0.0,
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(
                      color: Color.fromARGB(255, 105, 54, 244), width: 1.5),
                ),
              ),
              onChanged: (newText) {
                newTaskTitle = newText;
              },
            ),
            const SizedBox(
              height: 38,
            ),
            FlatButton(
                child: Text(
                  'Next',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                color: Colors.indigo,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WyDataTable1()),
                  );
                }),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBarFb5(),
    ));
  }
}
