// import 'package:Meals_App/models/meals.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';


// class FavoriteMealsNotifier extends StateNotifier<List<Meal>> {
//   FavoriteMealsNotifier() : super([]);

//   void toggleMealFavoriteStatus(Meal meal) {
//     final mealIsFavorite = state.contains(meal);

//     if (mealIsFavorite) {
//       state = state.where((m) => m.id != meal.id).toList();
//     } else {
//       state = [...state, meal];
//     }
//     state = [];
//   }
// }


// final favoriteMealsProvider = StateNotifierProvider<FavoriteMealsNotifier, List<Meal>>((ref) {
//   return FavoriteMealsNotifier();
// });