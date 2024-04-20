import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'FilterLabel.dart';

class Filters extends StatelessWidget {
  const Filters({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Row(
      children: [
        FilterLabel(imgPath: 'assets/images/gluten.png', onPressed: doNun),
        FilterLabel(imgPath: 'assets/images/lactose.png', onPressed: doNun),
        FilterLabel(imgPath: 'assets/images/vegan.png', onPressed: doNun),
        FilterLabel(imgPath: 'assets/images/healthy.png', onPressed: doNun),
      ],
    );
  }
}
void doNun(){

}