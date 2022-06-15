import 'package:flutter/material.dart';
import 'package:follow_up_11/Docteur/logindoct.dart';

class Navbar extends StatelessWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return const DesktopNavbar();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return const DesktopNavbar();
        } else {
          return const MobileNavbar();
        }
      },
    );
  }
}

class DesktopNavbar extends StatelessWidget {
  const DesktopNavbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          const Text(
            "Follow Up ",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.indigoAccent,
                fontSize: 30),
          ),
          Row(
            children: <Widget>[
              const Text(
                "Home",
                style: TextStyle(color: Colors.indigoAccent),
              ),
              const SizedBox(
                width: 30,
              ),
              const Text(
                "About Us",
                style: TextStyle(color: Colors.indigoAccent),
              ),
              const SizedBox(
                width: 30,
              ),
              const Text(
                "Contact",
                style: TextStyle(color: Colors.indigoAccent),
              ),
              const SizedBox(
                width: 30,
              ),
              MaterialButton(
                color: Colors.indigoAccent,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage1()),
                  );
                },
                child: const Text(
                  "Get Started",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class MobileNavbar extends StatelessWidget {
  const MobileNavbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Column(children: <Widget>[
        const Text(
          "Follow Up for you Doctor",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.indigoAccent,
              fontSize: 30),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Text(
                "Home",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                width: 30,
              ),
              Text(
                "About Us",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                width: 30,
              ),
              Text(
                "Contact",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
