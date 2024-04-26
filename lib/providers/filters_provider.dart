import 'package:Meals_App/main.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final filtersListProvider = Provider<List<bool>>((ref) {

  

  return [false, false, false, false];
});