// Create a Riverpod provider for the sorted list
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/meals.dart';


// final sortedMealListProvider = Provider<List<Meal>>((ref) {
//   // final filtersList = ref.watch(filtersListProvider);
//   List<Meal> filterMeals(List<Meal> meals, List<bool>attributes, String type, bool favorite, bool sortcookingtime) {
//     print("ss");
//     List<Meal> temp =  meals.where((meal) {
//       for (int i = 0; i < attributes.length; i++) {
//         if (attributes[i] && !meal.filters[i]) return false; // Check attributes
//       }
//       if (favorite && !meal.favourite) return false; // Check if favorite
//       if (type == 'all') return true;
//       if (type != meal.type) return false; // Check meal type
//       return true;
//     }).toList();
//     if(sortcookingtime) {
//       temp.sort((meal1, meal2) => meal1.cookingTime.compareTo(meal2.cookingTime));
//     }
//     return temp;
//   }
//   List<bool> filters = ref.watch(attributesProvider);
//   List<Meal> sortedMeals = filterMeals(allMeals, filters, 'all', false, false);
//   return sortedMeals;
// });

var constType = 'All Meals';

class MealsNotifier extends StateNotifier<List<Meal>> {
  MealsNotifier() : super(allMeals);


  void filterMeals(List<bool>attributes, String? type, bool favorite, bool sortcookingtime) {
    print("entered filter meals function");
    if (type != null) {
      constType = type;
    } else {
      type = constType;
    }
    state = allMeals;
    state = state.where((meal) {
      for (int i = 0; i < attributes.length; i++) {
        if (attributes[i] && !meal.filters[i]) return false; // Check attributes
      }
      if (favorite && !meal.favourite) return false; // Check if favorite
      if (type == 'All Meals') return true;
      if (type != meal.type) return false; // Check meal type
      return true;
    }).toList();

    if (sortcookingtime) {
      state.sort((meal1, meal2) => meal1.cookingTime.compareTo(meal2.cookingTime));
    }
  }

    // List<Meal> temp =  meals.where((meal) {
    //   for (int i = 0; i < attributes.length; i++) {
    //     if (attributes[i] && !meal.filters[i]) return false; // Check attributes
    //   }
    //   if (favorite && !meal.favourite) return false; // Check if favorite
    //   if (type == 'all') return true;
    //   if (type != meal.type) return false; // Check meal type
    //   return true;
    // }).toList();
    // if(sortcookingtime) {
    //   temp.sort((meal1, meal2) => meal1.cookingTime.compareTo(meal2.cookingTime));
    // }
    // return temp;
}


final sortedMealListProvider = StateNotifierProvider<MealsNotifier, List<Meal>>((ref) {
  
  return MealsNotifier();
});



