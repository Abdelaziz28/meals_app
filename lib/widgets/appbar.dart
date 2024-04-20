import 'package:Meals_App/screens/favouritesScreen.dart';
import 'package:Meals_App/screens/homeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
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
  Widget build(BuildContext context) {
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
              Navigator.of(context).pop();
            }else{
              Navigator.of(context).pushNamed(gotoPath);
            }},
            ),

      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}