import 'package:flutter_riverpod/flutter_riverpod.dart';

// final favoriteProvider = StateProvider<bool>((ref) => false);

// void setFalse(StateController<bool> favoriteState) {
//   favoriteState.state = false;
// }

// void setTrue(StateController<bool> favoriteState) {
//   favoriteState.state = true;
// }

class CookingTimeNotifier extends StateNotifier<bool> {
  CookingTimeNotifier() : super(true);

  void toggle() {
    if (state == true) {
      state = false;
    } else {
      state = true;
    }
  }
}

final cookingTimeProvider = StateNotifierProvider<CookingTimeNotifier, bool>((ref) {
  return CookingTimeNotifier();
});

// provider.setfalse();