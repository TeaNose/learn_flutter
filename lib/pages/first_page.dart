import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_learn_project/pages/home_page.dart';
import 'package:flutter_learn_project/pages/profile_page.dart';
import 'package:flutter_learn_project/pages/second_page.dart';
import 'package:flutter_learn_project/pages/settings_page.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _selectedIndex = 0;

  final List _pages = [
    HomePage(),
    ProfilePage(),
    SettingsPage(),
  ];

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TO DO LIST"),
        elevation: 0,
      ),
      drawer: Drawer(
        backgroundColor: Colors.blue[100],
        child: Column(
          children: [
            DrawerHeader(
              child: Icon(
                Icons.favorite,
                size: 48,
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("H O M E"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, "/homepage");
                //go to home page
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("C O U N T E R"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/counterpage');
              },
            ),
            ListTile(
              leading: Icon(Icons.note),
              title: Text("T O  D O"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/todopage');
              },
            )
          ],
        ),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
        onTap: _navigateBottomBar,
      ),
    );
  }
}
