// Create a Riverpod provider for the sorted list
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'meals.dart';

final sortedMealListProvider = Provider<List<Meal>>((ref) {
  List<Meal> filterMeals(List<Meal> meals, List<bool>attributes, String type,bool favorite) {
    return meals.where((meal) {
      if (type != meal.type) return false; // Check meal type
      for (int i = 0; i < attributes.length; i++) {
        if (attributes[i] && !meal.attributes[i]) return false; // Check attributes
      }
      return true;
    }).toList();
  }
  List<Meal> sortedMeals = filterMeals(allMeals, [false, true, false, false], 'Dessert',false);
  return sortedMeals;
});


