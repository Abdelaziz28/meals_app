import 'package:Meals_App/widgets/appbar.dart';
import 'package:Meals_App/widgets/showmeals.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/filters_provider.dart';
import '../widgets/filters.dart';

class FavouritesScreen extends ConsumerWidget {
  const FavouritesScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final filterProvider = ref.watch(attributesProvider);
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: const MyAppBar(title: "Meals App",
            actionIcon: Icons.star,
            onPressed: doNun,
          gotoPath: '/homescreen',),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Filters(gluten_free: filterProvider[0],lactose_free: filterProvider[1],vegan: filterProvider[2],healthy: filterProvider[3]),
              const Text('.Favourites.',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600
                ),),
              const ShowMeals(),
            ],
          ),
        )
    );
  }
}

void doNun(){

}