import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final IconData actionIcon;
  final Function onPressed;

  const MyAppBar({
    Key? key,
    required this.title,
    required this.actionIcon,
    required this.onPressed,
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
          onPressed: (){},
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}