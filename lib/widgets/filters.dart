import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Filter_label.dart';

class Filters extends StatefulWidget {
  final bool gluten_free;
  final bool lactose_free;
  final bool vegan;
  final bool healthy;
  const Filters({
    Key? key,
    required this.gluten_free,
    required this.lactose_free,
    required this.vegan,
    required this.healthy,
  }) : super(key: key);

  @override
  State<Filters> createState() => _FiltersState();
}

class _FiltersState extends State<Filters> {
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        FilterLabel(imgPath: 'assets/images/gluten.png', onPressed: doNun,index: 0, checked: widget.gluten_free),
        FilterLabel(imgPath: 'assets/images/lactose.png', onPressed: doNun,index: 1,checked: widget.lactose_free),
        FilterLabel(imgPath: 'assets/images/vegan.png', onPressed: doNun,index: 2, checked: widget.vegan),
        FilterLabel(imgPath: 'assets/images/healthy.png', onPressed: doNun,index: 3, checked: widget.healthy),
      ],
    );
  }
}
void doNun(){

}