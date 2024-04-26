
import 'package:Meals_App/widgets/FilterLabel.dart';
import 'package:Meals_App/widgets/appbar.dart';
import 'package:Meals_App/widgets/categoryLabel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/filters.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
      return const Scaffold(
        appBar: MyAppBar(title: "Meals App",
            actionIcon: Icons.star_border_outlined,
            onPressed: doNun,
           gotoPath: '/favorites',),
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
                children: [
                  Filters(),
                  Text('.Categories.',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600
                  ),),
                  CategoryLabel(imgPath: 'assets/images/pasta.jpg', onPressed: doNun, name: 'Italian'),
                  CategoryLabel(imgPath: 'assets/images/Borger.jpg', onPressed: doNun, name: 'American'),
                  CategoryLabel(imgPath: 'assets/images/oriental.png', onPressed: doNun, name: 'Oriental'),
                ],
            ),
          )
      );
  }
}

class MyGridView extends StatelessWidget {
  final int itemCount;
  final IndexedWidgetBuilder itemBuilder;

  const MyGridView({
    Key? key,
    required this.itemCount,
    required this.itemBuilder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
      ),
      padding: const EdgeInsets.all(10.0),
      itemCount: itemCount,
      itemBuilder: itemBuilder,
    );
  }
}
void doNun(){

}