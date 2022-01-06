import 'package:flutter/material.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({Key? key}) : super(key: key);

  @override
  _BottomNavbarState createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.blue,
      backgroundColor: Colors.red,
      unselectedItemColor: Colors.black,
      type: BottomNavigationBarType.fixed,
      onTap: (int index){
        setState(() {
          index = _selectedIndex;
        });
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('salom'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.message),
          title: Text('Message'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.ondemand_video),
          title: Text('Video'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_alert),
          title: Text('Natfication'),
        ),
      ],
    );
  }
}
