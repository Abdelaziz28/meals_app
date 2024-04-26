import 'package:Meals_App/screens/meal_info.dart';
import 'package:Meals_App/screens/meals.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MealLabel extends StatelessWidget implements PreferredSizeWidget {
  final String imgPath;
  final Function onPressed;
  final String name;
  final int cookingTime;

  const MealLabel({
    Key? key,
    required this.imgPath,
    required this.onPressed,
    required this.name,
    required this.cookingTime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(screenWidth*0.06, screenWidth*0.05, screenWidth*0.04, screenWidth*0.05),
          child: InkWell(
            onTap: (){
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>  const MealInfo(),
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
        Positioned(
          right: 30.0,
          bottom: 20.0,
          child: Text(
            cookingTime.toString(),
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