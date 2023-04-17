import 'package:flutter/material.dart';
import 'package:gestion_bourse/views/home.dart';

Widget myDrawer(BuildContext context) {
  return Drawer(
    child: ListView(
      // Important: Remove any padding from the ListView.
      padding: EdgeInsets.zero,
      children: [
        const UserAccountsDrawerHeader(
          decoration: BoxDecoration(color: Color(0xff764abc)),
          accountName: Text(
            "Mamady Kaba",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          accountEmail: Text(
            "mamady.kaba@gmail.com",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          currentAccountPicture: FlutterLogo(),
        ),
        ListTile(
          leading: const Icon(
            Icons.home,
          ),
          title: const Text('Accueil'),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const Home()));
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.school,
          ),
          title: const Text('Bourses'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.format_list_bulleted,
          ),
          title: const Text('Mes candidatures'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.help_center,
          ),
          title: const Text('FAQ'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        const AboutListTile(
          // <-- SEE HERE
          icon: Icon(
            Icons.info,
          ),
          child: Text('About app'),
          applicationIcon: Icon(
            Icons.local_play,
          ),
          applicationName: 'My Cool App',
          applicationVersion: '1.0.25',
          applicationLegalese: '© 2019 Company',
          aboutBoxChildren: [
            ///Content goes here...
          ],
        ),
      ],
    ),
  );
}
