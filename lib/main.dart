import 'package:flutter/material.dart';

import 'screens/favouritesScreen.dart';
import 'screens/homeScreen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
        primarySwatch: Colors.blue,
      ),
      home: const homeScreen(),
      routes: {
        '/favorites': (context) => FavouritesScreen(),
        '/homescreen': (context) => homeScreen(),
      },
    );
  }
}