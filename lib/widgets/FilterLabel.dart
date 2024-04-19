import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
    return InkWell(
      child: Padding(
        padding: EdgeInsets.fromLTRB(screenWidth*0.06, screenWidth*0.05, screenWidth*0.04, screenWidth*0.05),
        child: Container(
          width: 0.15*screenWidth,
          height: 0.12*screenHeight,
          decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(10)
          ),
          child: Padding(
            padding: const EdgeInsets.all(7.0),
            child: Image.asset(
              this.imgPath,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}