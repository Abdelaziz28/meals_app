
import 'package:Meals_App/widgets/FilterLabel.dart';
import 'package:Meals_App/widgets/appbar.dart';
import 'package:Meals_App/widgets/categoryLabel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/filters.dart';

class FavouritesScreen extends StatelessWidget {
  const FavouritesScreen({super.key});
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return const Scaffold(
        appBar: MyAppBar(title: "Meals App",
            actionIcon: Icons.star,
            onPressed: doNun,
          gotoPath: '/homescreen',),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Filters(),
              Text('.Favourites.',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600
                ),),
            ],
          ),
        )
    );
  }
}

void doNun(){

}