import 'package:flutter_riverpod/flutter_riverpod.dart';

final favoriteProvider = StateProvider<bool>((ref) => false);

void setFalse(StateController<bool> favoriteState) {
  favoriteState.state = false;
}

void setTrue(StateController<bool> favoriteState) {
  favoriteState.state = true;
}

// provider.setfalse();