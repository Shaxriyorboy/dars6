// import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bottom_navbar_page.dart';
import 'frist_page.dart';

class HomePage extends StatefulWidget {
  static const String id = 'home_page';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  bool checkColor = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
      ),
      body: FristPage(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: CircleAvatar(
                      radius: 35,
                      backgroundColor: Colors.white,
                      child: Text(
                        'SH',
                        style: TextStyle(fontSize: 35, color: Colors.blue),
                      ),
                    ),
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(bottom: 15),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Shaxriyor Tursunaliyev',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(top: 5),
                    child: Text(
                      'shaxriyortursunaliyev17gmail.com',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: index == 0? Colors.blue : Colors.grey,
              ),
              title: Text('Home',style: TextStyle(color: index == 0? Colors.blue : Colors.grey[800]),),
              onTap: () {
                setState(() {
                  index = 0;
                });
              },
            ),
            ListTile(
              leading: Icon(
                Icons.person,
                color: index == 1? Colors.blue : Colors.grey,
              ),
              title: Text('Profile',style: TextStyle(color: index == 1? Colors.blue : Colors.grey[800]),),
              onTap: () {
                setState(() {
                  index = 1;
                });
              },
            ),
            ListTile(
              leading: Icon(
                Icons.people,
                color: index == 2? Colors.blue : Colors.grey,
              ),
              title: Text('Aboutus',style: TextStyle(color: index == 2? Colors.blue : Colors.grey[800]),),
              onTap: () {
                setState(() {
                  index = 2;
                });
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavbar(),
    );
  }
}
