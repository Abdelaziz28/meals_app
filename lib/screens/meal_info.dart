import 'package:Meals_App/widgets/appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MealInfo extends ConsumerWidget {
  const MealInfo({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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