import 'package:Meals_App/providers/cooking_time_provider.dart';
import 'package:Meals_App/providers/favorites_provider.dart';
import 'package:Meals_App/providers/filters_provider.dart';
import 'package:Meals_App/providers/meals_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SortIcon extends ConsumerStatefulWidget {
  SortIcon({super.key});
  // late bool sort ;
  @override
  ConsumerState<SortIcon> createState() => _SortIconState();
}

class _SortIconState extends ConsumerState<SortIcon> {
  @override
  Widget build(BuildContext context) {
    final filtersProvider = ref.watch(attributesProvider);
    final favorites = ref.watch(favoritesProvider);
    final cookingTime = ref.watch(cookingTimeProvider);
    return IconButton(onPressed: (){
      ref.watch(cookingTimeProvider.notifier).toggle();
      ref.watch(sortedMealListProvider.notifier).filterMeals(filtersProvider, null, favorites, cookingTime);
      setState(() {});
    }, icon:  Icon(cookingTime? Icons.sort: Icons.arrow_downward));
  }
}
