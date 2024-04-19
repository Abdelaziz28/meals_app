import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FilterLabel extends StatelessWidget implements PreferredSizeWidget {
  final String imgPath;
  final Function onPressed;

  const FilterLabel({
    Key? key,
    required this.imgPath,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.fromLTRB(screenWidth*0.1, screenWidth*0.05, screenWidth*0.1, screenWidth*0.1),
      child: Container(
        width: 0.15*screenWidth,
        height: 0.12*screenHeight,
        decoration: BoxDecoration(
          color: Colors.blueAccent,
          image: DecorationImage(
            image: ExactAssetImage(this.imgPath),
            fit: BoxFit.fitHeight,
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}