import 'package:Meals_App/screens/homeScreen.dart';
import 'package:Meals_App/widgets/appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MealInfo extends StatelessWidget {
  const MealInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: 'Meal Info',
        actionIcon: Icons.star_border_outlined,
        onPressed: () {},
        gotoPath: './homeScreen',
      ),

      backgroundColor: Colors.white,
      body: const Center(
        child: Text('Meal Info'),
      ),
    );
  }
}