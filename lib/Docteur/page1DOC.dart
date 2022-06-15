import 'package:flutter/material.dart';
import 'package:follow_up_11/Docteur/profileDoc.dart';
import 'package:follow_up_11/Patient/profile.dart';
import 'package:follow_up_11/Patient/quetionaire.dart';
import 'package:follow_up_11/rapport.dart';

import '../main.dart';

class DrawerMenu1 extends StatelessWidget {
  const DrawerMenu1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      drawer: Drawer(
        child: ListView(padding: const EdgeInsets.all(0.0), children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Dr Kawtar Khalfallah"),
            accountEmail: const Text('mkakh@gmail.com'),
            currentAccountPicture: const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTeQyDHgg0wC44cRn5PzP8ryTdsU0E6xQ1fVQ&usqp=CAU'),
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
      body: const WyDataTable(),
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
                            builder: (context) => const DrawerMenu1()),
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
                            builder: (context) => const Profile1()),
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
