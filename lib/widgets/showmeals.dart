import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/meals_provider.dart';
import 'mealLabel.dart';

class ShowMeals extends ConsumerStatefulWidget {
  const ShowMeals({super.key});
  @override
  ConsumerState<ShowMeals> createState() => _ShowMealsState();
}

class _ShowMealsState extends ConsumerState<ShowMeals> {
  // final mealsProvider = ref.watch(sortedMealListProvider);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListView.builder(
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(), // Disable ListView scrolling
              itemCount: ref.watch(sortedMealListProvider).length,
              itemBuilder: (context, index) {
                final meal = ref.watch(sortedMealListProvider)[index];
                return MealLabel(
                    imgPath: 'assets/images/pasta.jpg',
                    onPressed: doNun,
                    name: meal.mealName,
                    cookingTime: meal.cookingTime
                );
              }
          ),
        ],
      ),
    );
  }
}

void doNun(){}