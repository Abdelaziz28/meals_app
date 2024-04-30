import 'package:Meals_App/models/meals.dart';
import 'package:Meals_App/utilities/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MealInfo extends StatelessWidget {
  Meal meal;

  MealInfo({
    Key? key,
    required this.meal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String buttonText = "";
    if (meal.favourite) {
      buttonText = "Remove from favorites";
    } else {
      buttonText = "Add to favorites";
    }
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      // appBar: MyAppBar(
      //   title: 'Meal Info',
      //   actionIcon: Icons.star_border_outlined,
      //   onPressed: () {},
      //   gotoPath: './homeScreen',
      // ),
      // backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Stack(
                children: [
                  Image.asset(
                    meal.imagePath,
                    width: screenWidth,
                    height: screenHeight * 0.3,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    left: 15.0,
                    top: 20.0,
                    child: IconButton(
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                  Positioned(
                    right: 15.0,
                    top: 20.0,
                    child: IconButton(
                      icon: const Icon(
                        Icons.star_border_outlined,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/favorites');
                      },
                    ),
                  ),
                ],
              ),
              Expanded(
              child: Container(
                margin: EdgeInsets.only(top: screenHeight * 0.3 - 20),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20)
                ),
                ),
                width: screenWidth,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 25),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          meal.mealName,
                          style: const TextStyle(
                            color: textColor,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 25),
                    const Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text(
                        "Ingredients:",
                        style: TextStyle(
                          color: textGrey,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        meal.ingredients,
                        style: const TextStyle(
                          color: textColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text(
                        "Instructions:",
                        style: TextStyle(
                          color: textGrey,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        meal.instructions,
                        style: const TextStyle(
                          color: textColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ],
            ),
            const SizedBox(height: 14,),
            ElevatedButton(
              onPressed: () {
                if (meal.favourite) {
                  meal.favourite = false;
                } else {
                  meal.favourite = true;
                }
                Navigator.pop(context, meal);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: backgroundColor
              ), 
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 18,
                ),
                child: Text(
                  buttonText,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }
}
