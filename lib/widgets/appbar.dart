import 'package:Meals_App/providers/favorites_provider.dart';
import 'package:Meals_App/providers/filters_provider.dart';
import 'package:Meals_App/providers/meals_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyAppBar extends ConsumerWidget implements PreferredSizeWidget {
  final String title;
  final IconData actionIcon;
  final Function onPressed;
  final String gotoPath;

  const MyAppBar({
    Key? key,
    required this.title,
    required this.actionIcon,
    required this.onPressed,
    required this.gotoPath
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final filtersProvider = ref.watch(attributesProvider);
    return AppBar(
      backgroundColor: Color(0xFFD9D9D9),
      title: Text(
        title,
        textAlign: TextAlign.center,
      ),
      centerTitle: true,
      actions: <Widget>[
        IconButton(
          icon: Icon(actionIcon),
          onPressed: () {
            if(gotoPath == '/homescreen'){
              ref.read(favoritesProvider.notifier).setFalse();
              Navigator.of(context).pop();
            }else{
              ref.read(favoritesProvider.notifier).setTrue();
              final favorite = ref.watch(favoritesProvider);
              ref.watch(sortedMealListProvider.notifier).filterMeals(filtersProvider, "All Meals", favorite, false);
              Navigator.of(context).pushNamed(gotoPath);
            }},
            ),

      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}