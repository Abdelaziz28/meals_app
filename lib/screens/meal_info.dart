import 'package:Meals_App/screens/show_meals.dart';
import 'package:Meals_App/widgets/appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MealInfo extends ConsumerWidget {
  const MealInfo({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      // appBar: MyAppBar(
      //   title: 'Meal Info',
      //   actionIcon: Icons.star_border_outlined,
      //   onPressed: () {},
      //   gotoPath: './homeScreen',
      // ),
      // backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                "assets/images/tacos.png",
                width: screenWidth,
                height: screenHeight * 0.3,
                fit: BoxFit.cover,
              ),
              Positioned(
                left: 15.0,
                top: 20.0,
                child: IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.white,),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
              Positioned(
                right: 15.0,
                top: 20.0,
                child: IconButton(
                  icon: const Icon(Icons.star_border_outlined, color: Colors.white,),
                  onPressed: () {
                    Navigator.pushNamed(context, '/favorites');
                  },
                ),
              )
            ],
          ),
          SingleChildScrollView (
            child: Container(
              color: Colors.amber,
              width: screenWidth * 1.0,
              height: screenHeight * 0.7,
              child: const Column(
                children: [
                  SizedBox(height: 25),
                  Text("Meal Info",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 25),
                  Text(
                    """
                      * 1 pound boneless, skinless chicken breasts, cut into bite-sized pieces
                      * 1 tablespoon olive oil
                      * 1/2 cup butter
                      * 1/2 cup all-purpose flour
                      * 4 cups chicken broth
                      * 1 cup heavy cream
                      * 1/2 cup grated Parmesan cheese
                      * 1/4 cup grated Romano cheese
                      * 1/4 teaspoon salt
                      * 1/8 teaspoon black pepper
                      * Fresh parsley, chopped (optional)
                    """,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              )
            ),
          )
        ],
      ),
    );
  }
}

// children: [
//           Expanded(
//             child: SingleChildScrollView(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 children: [
//                   Image.asset(
//                     imagePath,
//                     width: double.infinity,
//                     fit: BoxFit.cover,
//                   ),
//                   SizedBox(height: 20),
//                   Container(
//                     padding: EdgeInsets.all(16),
//                     child: Text(
//                       'Meal Details',
//                       style: TextStyle(
//                         fontSize: 24,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                   Container(
//                     padding: EdgeInsets.symmetric(horizontal: 16),
//                     child: Text(
//                       'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus ac ipsum eget magna convallis lacinia. Nullam nec nulla non justo aliquet scelerisque.',
//                       style: TextStyle(fontSize: 16),
//                     ),
//                   ),
//                   // Add more meal details here
//                   SizedBox(height: 20),
//                 ],
//               ),
//             ),
//           ),
//         ],