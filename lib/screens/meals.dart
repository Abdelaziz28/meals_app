import 'package:Meals_App/widgets/mealLabel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../widgets/appbar.dart';
import '../widgets/filters.dart';
import '../providers/meals_provider.dart';

class MealsScreen extends ConsumerWidget {
  final String title;

  const MealsScreen({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mealsProvider = ref.watch(sortedMealListProvider);
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: MyAppBar(
        title: 'Meals App',
        actionIcon: Icons.star_border_outlined,
        onPressed: (){
        },
        gotoPath: '/homescreen',
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Filters(),
            Text(title, style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600
              ),),
            Text(mealsProvider.length.toString()),
            ListView.builder(
              shrinkWrap: true,
              itemCount: mealsProvider.length,
              itemBuilder: (context, index) {
                final meal = mealsProvider[index];
                return MealLabel(
                  imgPath: 'assets/images/pasta.jpg',
                  onPressed: doNun,
                  name: meal.mealName,
                  cookingTime: meal.cookingTime
                );
                // return ListTile(
                //   leading: Image.asset('assets/images/pasta.jpg'),
                //   title: Text(meal.mealName),
                //   subtitle: Text(meal.cookingTime.toString()),
                //   trailing: Chip(
                //     label: Text(meal.type),
                //   ),
                // );
                // return Text(meal.mealName);
              }
            ),
            
            // Consumer(
            //   builder: (context, watch, _) {
            //     final sortedMeals = watch(sortedMealListProvider).state;
            //     return ListView.builder(
            //       itemCount: sortedMeals.length,
            //       itemBuilder: (context, index) {
            //         final meal = sortedMeals[index];
            //         return ListTile(
            //           leading: Image.asset(meal.imagePath),
            //           title: Text(meal.mealName),
            //           subtitle: Text(meal.cookingTime),
            //           trailing: Chip(
            //             label: Text(meal.type),
            //           ),
            //         );
            //       },
            //     );
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}

void doNun() {}
