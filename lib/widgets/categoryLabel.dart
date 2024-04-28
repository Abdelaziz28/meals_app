import 'package:Meals_App/providers/filters_provider.dart';
import 'package:Meals_App/providers/meals_provider.dart';
import 'package:Meals_App/screens/show_meals.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CategoryLabel extends ConsumerWidget implements PreferredSizeWidget {
  final String imgPath;
  final Function onPressed;
  final String name;

  const CategoryLabel({
    Key? key,
    required this.imgPath,
    required this.onPressed,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    final filterProvider = ref.watch(attributesProvider);

    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(screenWidth*0.06, screenWidth*0.05, screenWidth*0.04, screenWidth*0.05),
          child: InkWell(
            onTap: (){
              ref.watch(sortedMealListProvider.notifier).filterMeals(filterProvider, name, false, false);
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>  MealsScreen(title: name),
                ),
              );
            },
            child: Container(
              width: 0.92*screenWidth,
              height: 0.25*screenHeight,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  imgPath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: 30.0,
          bottom: 20.0,
          child: Text(
            name,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              shadows: [
                Shadow(
                  offset: const Offset(1.0, 1.0),
                  blurRadius: 8.0,
                  color: Colors.black.withOpacity(0.5),
                ),
                Shadow(
                  offset: const Offset(-1.0, -1.0),
                  blurRadius: 8.0,
                  color: Colors.black.withOpacity(0.5),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}