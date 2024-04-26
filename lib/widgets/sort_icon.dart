import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SortIcon extends StatefulWidget {
  SortIcon({super.key});
  bool sort = false;
  @override
  State<SortIcon> createState() => _SortIconState();
}

class _SortIconState extends State<SortIcon> {
  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: (){
      widget.sort = !widget.sort;
      setState(() {});
    }, icon:  Icon(widget.sort? Icons.sort: Icons.arrow_downward));
  }
}
