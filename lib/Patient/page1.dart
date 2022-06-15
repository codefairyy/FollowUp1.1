import 'package:flutter/material.dart';
import 'package:follow_up_11/Patient/profile.dart';
import 'package:follow_up_11/Patient/quetionaire.dart';

import '../main.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 119, 84, 243),
      ),
      drawer: Drawer(
        child: ListView(padding: const EdgeInsets.all(0.0), children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: const Text('mk khalfallah'),
            accountEmail: const Text('mkakh@gmail.com'),
            currentAccountPicture: const CircleAvatar(
              backgroundImage: NetworkImage(
                  'data:image/png;base64,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'),
            ),
            onDetailsPressed: () {},
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAACoCAMAAABt9SM9AAAAA1BMVEVvAP/J815KAAAAR0lEQVR4nO3BAQEAAACCIP+vbkhAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAO8GxYgAAb0jQ/cAAAAASUVORK5CYII='),
                    fit: BoxFit.cover)),
          ),
          const Divider(),
          ListTile(
            title: const Text('Profile'),
            leading: const Icon(Icons.person),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            title: const Text('New Chat'),
            leading: const Icon(Icons.chat),
            onLongPress: () {},
          ),
          ListTile(
            title: const Text('Calls'),
            leading: const Icon(Icons.call),
            onLongPress: () {},
          ),
          const Divider(),
          ListTile(
            title: const Text('Settings'),
            leading: const Icon(Icons.settings),
            onLongPress: () {},
          ),
          const Divider(),
          ListTile(
            title: const Text('Support'),
            leading: const Icon(Icons.report_problem),
            onLongPress: () {},
          ),
          ListTile(
              title: const Text('Close'),
              leading: const Icon(Icons.close),
              onTap: () {
                Navigator.of(context).pop();
              }),
        ]),
      ),
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/background.jpg"),
              fit: BoxFit.none,
            ),
          ),
          // use any child here
          child: DialogFb1()),
      bottomNavigationBar: BottomNavBarFb5(),
    );
  }
}

class BottomNavBarFb5 extends StatelessWidget {
  BottomNavBarFb5({Key? key}) : super(key: key);

  final primaryColor = Color.fromARGB(255, 119, 84, 243);
  final secondaryColor = Color.fromARGB(255, 126, 131, 207);
  final accentColor = const Color(0xffffffff);
  final backgroundColor = const Color(0xffffffff);
  final errorColor = const Color(0xffEF4444);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromARGB(255, 74, 58, 250),
          Color.fromARGB(255, 121, 139, 228)
        ]),
      ),
      child: BottomAppBar(
        elevation: 0,
        color: Colors.transparent,
        child: SizedBox(
          height: 56,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(left: 25.0, right: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconBottomBar(
                    text: "Home",
                    icon: Icons.home,
                    selected: true,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DrawerMenu()),
                      );
                    }),
                IconBottomBar(
                    text: "Profile",
                    icon: Icons.person,
                    selected: false,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Profile()),
                      );
                    }),
                IconBottomBar(
                    text: "Notification",
                    icon: Icons.notification_important,
                    selected: false,
                    onPressed: () {})
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class IconBottomBar extends StatelessWidget {
  const IconBottomBar(
      {Key? key,
      required this.text,
      required this.icon,
      required this.selected,
      required this.onPressed})
      : super(key: key);
  final String text;
  final IconData icon;
  final bool selected;
  final Function() onPressed;

  final primaryColor = const Color(0xff4338CA);
  final accentColor = const Color(0xffffffff);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: onPressed,
          icon:
              Icon(icon, size: 25, color: selected ? accentColor : Colors.grey),
        ),
        Text(
          text,
          style: TextStyle(
              fontSize: 12,
              height: .1,
              color: selected ? accentColor : Colors.grey),
        )
      ],
    );
  }
}

class SimpleBtn1 extends StatelessWidget {
  final String text;
  final Function() onPressed;
  final bool invertedColors;
  SimpleBtn1(
      {required this.text,
      required this.onPressed,
      this.invertedColors = false,
      Key? key})
      : super(key: key);
  final primaryColor = Color.fromARGB(255, 243, 243, 243);
  final accentColor = Color.fromARGB(255, 0, 0, 0);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            elevation: MaterialStateProperty.all(0),
            alignment: Alignment.center,
            side: MaterialStateProperty.all(
                BorderSide(width: 1, color: primaryColor)),
            padding: MaterialStateProperty.all(
                const EdgeInsets.only(right: 25, left: 25, top: 0, bottom: 0)),
            backgroundColor: MaterialStateProperty.all(
                invertedColors ? accentColor : primaryColor),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            )),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
              color: invertedColors ? primaryColor : accentColor, fontSize: 16),
        ));
  }
}

class DialogFb1 extends StatelessWidget {
  DialogFb1({Key? key}) : super(key: key);
  final primaryColor = Color.fromRGBO(67, 56, 202, 1);
  final accentColor = Color.fromARGB(255, 175, 136, 236);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Container(
        width: MediaQuery.of(context).size.width / 1.6,
        height: MediaQuery.of(context).size.height / 3,
        decoration: BoxDecoration(
            color: Color.fromARGB(248, 250, 196, 255),
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(12, 26),
                  blurRadius: 50,
                  spreadRadius: 0,
                  color: Colors.grey.withOpacity(.1)),
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: primaryColor,
              radius: 20,
              child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHWsHxfUyW3DTzFoGI4iypSk2Hfz_NEnWnVU7MNmJs_42A5nNMA7rh9rZiHAr9nld8q7M&usqp=CAU"),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text("How are you doing?",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 3.5,
            ),
            const Text("you can start now",
                style: TextStyle(
                    color: Color.fromARGB(255, 53, 52, 52),
                    fontSize: 12,
                    fontWeight: FontWeight.w300)),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SimpleBtn1(
                    text: "Start",
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const MyApp1()),
                      );
                    }),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class IllustrationFb3 extends StatelessWidget {
  const IllustrationFb3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      "https://thumbs.dreamstime.com/z/ilustraci%C3%B3n-de-doctores-en-l%C3%ADnea-plana-vectorial-port%C3%A1til-con-un-m%C3%A9dico-que-habla-la-familia-aislado-fondo-blanco-dise%C3%B1o-para-186009028.jpg",
      fit: BoxFit.cover,
    );
  }
}
