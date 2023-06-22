import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:peliculas/models/models.dart';

final queryProvider = StateProvider<String>((ref) => '');
final isLoadingProvider = StateProvider<bool>((ref) => false);
final numberPageProvider = StateProvider<int>((ref) => 1);
final keyProvider = StateProvider<Key>((ref) => const Key(''));
final selectedMovieProvider = StateProvider<Result>((ref) => const Result());

final popularProvider =
    StateNotifierProvider<PopularNotifier, List<Result>>((ref) {
  return PopularNotifier();
});

class PopularNotifier extends StateNotifier<List<Result>> {
  PopularNotifier() : super([]);

  void save(List<Result> results) {
    state = [...state, ...results];
  }
}

final moviesCastProvider =
    StateNotifierProvider<MoviesCastNotifier, Map<int, List<Cast>>>((ref) {
  return MoviesCastNotifier();
});

class MoviesCastNotifier extends StateNotifier<Map<int, List<Cast>>> {
  MoviesCastNotifier() : super({});

  void update(Credits credits) {
    state = {...state, credits.id!: credits.cast!};
  }
}
