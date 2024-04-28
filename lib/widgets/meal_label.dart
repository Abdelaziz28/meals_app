import 'package:Meals_App/screens/meal_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
    String hours = (cookingTime/60).toInt().toString();
    String minutes = (cookingTime%60).toString();
    if(minutes.length == 1){
      minutes = '0$minutes';
    }
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
                  blurRadius: 8,
                  color: Colors.black.withOpacity(1),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          right: 30.0,
          bottom: 20.0,
          child: Row(
            children: [
              Icon(Icons.access_time_filled,color: Colors.white,shadows: [
                Shadow(
                  offset: const Offset(1.0, 1.0),
                  blurRadius: 8.0,
                  color: Colors.black.withOpacity(1),
                )
              ],),
              SizedBox(width:4),
              Text(
                '$hours:$minutes',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                      offset: const Offset(1.0, 1.0),
                      blurRadius: 8.0,
                      color: Colors.black.withOpacity(1),
                    ),
                    Shadow(
                      offset: const Offset(-1.0, -1.0),
                      blurRadius: 8.0,
                      color: Colors.black.withOpacity(1),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}