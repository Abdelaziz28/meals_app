import 'package:Meals_App/models/meals.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FilterLabel extends StatefulWidget implements PreferredSizeWidget {
  final String imgPath;
  final Function onPressed;
  final int index;
  const FilterLabel({
    Key? key,
    required this.imgPath,
    required this.onPressed,
    required this.index,
  }) : super(key: key);

  @override
  State<FilterLabel> createState() => _FilterLabelState();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _FilterLabelState extends State<FilterLabel> {
  Color background = Colors.grey;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.fromLTRB(screenWidth * 0.06, screenWidth * 0.05, screenWidth * 0.04, screenWidth * 0.05),
      child: InkWell(
        onTap: () {
          attributes[widget.index] = !attributes[widget.index];
          // access the provider to know which color to show
          if (attributes[widget.index]) {
            background = Colors.green;
          } else {
            background = Colors.grey;
          }
          setState(() {});
        },
        child: Container(
          width: 0.15 * screenWidth,
          height: 0.12 * screenHeight,
          decoration: BoxDecoration(
            color: background,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(7.0),
            child: Image.asset(
              this.widget.imgPath,
            ),
          ),
        ),
      ),
    );
  }
}