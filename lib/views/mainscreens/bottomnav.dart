import 'package:flutter/material.dart';
import 'package:sd_abroad_app/views/mainscreens/dashboardmain.dart';
import 'package:sd_abroad_app/views/mainscreens/test_prep.dart';

import '../university/coursesviewall.dart';
import 'homepage.dart';
import 'profile.dart';

class MyBottomBar extends StatefulWidget {
  const MyBottomBar({Key? key}) : super(key: key);

  @override
  State<MyBottomBar> createState() => _MyBottomBarState();
}

class _MyBottomBarState extends State<MyBottomBar> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    TestPrep(),
    CoursesViewAll(),
    ProfilePage(),
    DashboardMain()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/images/home.png")),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/images/prep.png")),
            label: 'Test Prep.',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/images/c.png")),
            label: 'Courses.',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/images/dash.png")),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/images/person.png")),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.blue,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
        showSelectedLabels: true,
        showUnselectedLabels: true,
      ),
    );
  }
}
