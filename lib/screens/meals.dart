import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/appbar.dart';
import '../widgets/filters.dart';

class MealsScreen extends StatelessWidget {
  final String title;

  const MealsScreen({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: MyAppBar(
        title: 'Meals app',
        actionIcon: Icons.star_border_outlined,
        onPressed: (){
        },
        gotoPath: '/homescreen',
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Filters(),
            Text(title, style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600
              ),),
          ],
        ),
      ),
    );
  }
}
