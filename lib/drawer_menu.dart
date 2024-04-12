import 'package:flutter/material.dart';

import 'main.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _buildDrawerHeader(),
          _buildDrawerItem(
              icon: Icons.home,
              text: 'Fila Center',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.home)}),
          _buildDrawerItem(
              icon: Icons.account_circle,
              text: 'Fila Start',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.profile)}),
          _buildDrawerItem(
              icon: Icons.movie,
              text: 'Fila End',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.movies)}),
          const Divider(),
          _buildDrawerItem(
              icon: Icons.contact_phone,
              text: 'Fila spaceEvenly',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.contacts)}),
          _buildDrawerItem(
              icon: Icons.note,
              text: 'Fila spaceAround',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.pagina5)}),
          _buildDrawerItem(
              icon: Icons.note_alt_rounded,
              text: 'Fila spaceBetween',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.pagina6)}),
          _buildDrawerItem(
              icon: Icons.notes,
              text: 'CrossAxis Center',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.pagina7)}),
          ListTile(
            title: const Text('App version 1.0.0'),
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildDrawerHeader() {
    return const DrawerHeader(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/drawer_header.png'))),
        child: Stack(children: <Widget>[
          Positioned(
              bottom: 12.0,
              left: 16.0,
              child: Text("Compilación Movil\n Jorge Meza",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500))),
        ]));
  }

  Widget _buildDrawerItem(
      {required IconData icon,
      required String text,
      required GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(text),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}
