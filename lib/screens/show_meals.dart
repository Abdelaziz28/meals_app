import 'package:Meals_App/widgets/showmeals.dart';
import 'package:Meals_App/widgets/sort_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/filters_provider.dart';
import '../widgets/appbar.dart';
import '../widgets/filters.dart';
import '../providers/meals_provider.dart';

class MealsScreen extends ConsumerWidget {
  final String title;
  const MealsScreen({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final filterProvider = ref.watch(attributesProvider);
    print(filterProvider);
    final mealsProvider = ref.watch(sortedMealListProvider);
    print(mealsProvider);
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: MyAppBar(
        title: 'Meals App',
        actionIcon: Icons.star_border_outlined,
        onPressed: (){
        },
        gotoPath: '/favorites',
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Filters(gluten_free: filterProvider[0],lactose_free: filterProvider[1],vegan: filterProvider[2],healthy: filterProvider[3]),
            Padding(
              padding:  EdgeInsets.only(left: screenWidth * 0.37),
              child: Row(
                children: [
                  Text(title, style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600
                    ),),
                  SortIcon(),
                ],
              ),
            ),
            Text(mealsProvider.length.toString()),
            const ShowMeals(),
          ],
        ),
      ),
    );
  }
}

void doNun() {}
