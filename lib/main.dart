// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_learn_project/pages/counter_page.dart';
import 'package:flutter_learn_project/pages/first_page.dart';
import 'package:flutter_learn_project/pages/home_page.dart';
import 'package:flutter_learn_project/pages/profile_page.dart';
import 'package:flutter_learn_project/pages/second_page.dart';
import 'package:flutter_learn_project/pages/settings_page.dart';
import 'package:flutter_learn_project/pages/todo_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      routes: {
        '/secondpage': (context) => SecondPage(),
        '/homepage': (context) => HomePage(),
        '/settingspage': (context) => SettingsPage(),
        '/profilepage': (context) => ProfilePage(),
        '/counterpage': (context) => CounterPage(),
        '/todopage': (context) => ToDoPage()
      },
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}