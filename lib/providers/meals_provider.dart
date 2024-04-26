// Create a Riverpod provider for the sorted list
import 'package:Meals_App/providers/filters_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/meals.dart';



final sortedMealListProvider = Provider<List<Meal>>((ref) {
  // final filtersList = ref.watch(filtersListProvider);

  List<Meal> filterMeals(List<Meal> meals, List<bool>attributes, String type, bool favorite, bool sortcookingtime) {
    return meals.where((meal) {
      for (int i = 0; i < attributes.length; i++) {
        if (attributes[i] && !meal.filters[i]) return false; // Check attributes
      }
      if (favorite && !meal.favourite) return false; // Check if favorite
      if (type == 'all') return true;
      if (type != meal.type) return false; // Check meal type
      return true;
    }).toList();
  }
  
  List<Meal> sortedMeals = filterMeals(allMeals, [false,false,false,false], 'Dessert', false, false);
  return sortedMeals;
});




