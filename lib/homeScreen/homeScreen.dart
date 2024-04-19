
import 'package:Meals_App/widgets/FilterLabel.dart';
import 'package:Meals_App/widgets/appbar.dart';
import 'package:Meals_App/widgets/categoryLabel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
      return const Scaffold(
        appBar: MyAppBar(title: "Meals App",
            actionIcon: Icons.star,
            onPressed: doNun),
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
                children: [
                  Row(
                    children: [
                      FilterLabel(imgPath: 'assets/images/gluten.png', onPressed: doNun),
                      FilterLabel(imgPath: 'assets/images/lactose.png', onPressed: doNun),
                      FilterLabel(imgPath: 'assets/images/lactose.png', onPressed: doNun),
                      FilterLabel(imgPath: 'assets/images/lactose.png', onPressed: doNun),
                    ],
                  ),
                  Text('.Categories.',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600
                  ),),
                  CategoryLabel(imgPath: 'assets/images/Borger.jpg', onPressed: doNun, name: 'Burger'),
                  CategoryLabel(imgPath: 'assets/images/Borger.jpg', onPressed: doNun, name: 'Burger'),
                  CategoryLabel(imgPath: 'assets/images/Borger.jpg', onPressed: doNun, name: 'Burger'),
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
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
      ),
      padding: EdgeInsets.all(10.0),
      itemCount: itemCount,
      itemBuilder: itemBuilder,
    );
  }
}
void doNun(){

}