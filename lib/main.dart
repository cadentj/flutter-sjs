import 'package:flutter/material.dart';
import 'views/calendar.dart';
import 'views/bottom_nav_bar.dart';
import 'views/home_screen.dart';
import 'views/calendar_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/second' : (context) => const CalendarScreen(),
      },
    );
  }
}


