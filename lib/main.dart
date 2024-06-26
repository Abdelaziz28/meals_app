import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'screens/favourites_screen.dart';
import 'screens/homeScreen.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
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
      home: const HomeScreen(),
      routes: {
        '/favorites': (context) => const FavouritesScreen(),
        '/homescreen': (context) => const HomeScreen(),
      },
    );
  }
}