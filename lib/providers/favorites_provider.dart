import 'package:flutter_riverpod/flutter_riverpod.dart';

// final favoriteProvider = StateProvider<bool>((ref) => false);

// void setFalse(StateController<bool> favoriteState) {
//   favoriteState.state = false;
// }

// void setTrue(StateController<bool> favoriteState) {
//   favoriteState.state = true;
// }

class FavoritesNotifier extends StateNotifier<bool> {
  FavoritesNotifier() : super(false);

  void setFalse() {
    state = false;
  }

  void setTrue() {
    state = true;
  }
}

final favoritesProvider = StateNotifierProvider<FavoritesNotifier, bool>((ref) {
  return FavoritesNotifier();
});

// provider.setfalse();