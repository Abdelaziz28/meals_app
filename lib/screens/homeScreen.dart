import 'package:Meals_App/providers/meals_provider.dart';
import 'package:Meals_App/widgets/appbar.dart';
import 'package:Meals_App/widgets/categoryLabel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/filters_provider.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    print("zz");
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
      return Scaffold(
        appBar: MyAppBar(title: "Meals App",
            actionIcon: Icons.star_border_outlined,
            onPressed: () {
            },
           gotoPath: '/favorites',),
          backgroundColor: Colors.white,
          body: const SingleChildScrollView(
              child: Column(
                  children: [
                    // Filters(gluten_free: filterProvider[0],lactose_free: filterProvider[1],vegan: filterProvider[2],healthy: filterProvider[3]),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Text('.Categories.',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600
                      ),),
                    ),
                    CategoryLabel(imgPath: 'assets/images/pasta.jpg', onPressed: doNun, name: 'Italian'),
                    CategoryLabel(imgPath: 'assets/images/Borger.jpg', onPressed: doNun, name: 'American'),
                    CategoryLabel(imgPath: 'assets/images/oriental.png', onPressed: doNun, name: 'Oriental'),
                    CategoryLabel(imgPath: 'assets/images/all-meals.jpeg', onPressed: doNun, name: 'All Meals'),
                  ],
              ),
          ),
      );
  }
}


void doNun() {}