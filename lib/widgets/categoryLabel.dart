import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CategoryLabel extends StatelessWidget implements PreferredSizeWidget {
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
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.fromLTRB(screenWidth*0.06, screenWidth*0.05, screenWidth*0.04, screenWidth*0.05),
      child: Container(
        width: 0.92*screenWidth,
        height: 0.25*screenHeight,
        decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(20)
        ),
        child: ClipRRect( // ClipRRect widget to apply the border radius to the image
          borderRadius: BorderRadius.circular(20), // Same border radius as the container
          child: Image.asset(
            'assets/images/Borger.jpg', // Replace with your image path
            fit: BoxFit.cover, // Use BoxFit to fit the image within the container
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}