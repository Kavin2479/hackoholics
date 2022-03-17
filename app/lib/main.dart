// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, dead_code

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("MyApp"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Welcome",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w200,
                ),
              ),
            ],
          ),
        ),
        drawer: Drawer(
          child: Material(
              color: Colors.blueAccent,
              child: ListView(
                children: <Widget>[
                  const SizedBox(
                    height: 50,
                  ),
                  buildsearch(),
                  const SizedBox(
                    height: 40,
                  ),
                  buildMenuItem(
                    text: 'Home',
                    icon: Icons.home,
                  ),
                  buildMenuItem(
                    text: 'Schools',
                    icon: Icons.school_sharp,
                  ),
                  buildMenuItem(
                    text: 'Map',
                    icon: Icons.map,
                  ),
                  buildMenuItem(
                    text: 'Help',
                    icon: Icons.help_outline_sharp,
                  ),
                  buildMenuItem(
                    text: 'About',
                    icon: Icons.badge_outlined,
                  ),
                ],
              )),
        ),
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
  }) {
    final color = Colors.white;
    final hoverColor = Colors.amber;
    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      contentPadding: EdgeInsets.symmetric(
        horizontal: 25.0,
        vertical: 15.0,
      ),
      hoverColor: hoverColor,
      onTap: () {},
    );
  }

  Widget buildsearch() {
    return TextField(
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        hintText: 'Search',
        hintStyle: TextStyle(color: Colors.white),
        prefixIcon: Icon(Icons.search, color: Colors.white),
        filled: true,
        fillColor: Colors.white12,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: Colors.white.withOpacity(0.7)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: Colors.white.withOpacity(0.7)),
        ),
      ),
    );
  }
}
