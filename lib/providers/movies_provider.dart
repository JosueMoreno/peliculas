import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:peliculas/models/models.dart';

final selectedMovie = StateProvider<Result>((ref) => const Result());
final isLoadingProvider = StateProvider<bool>((ref) => false);
final requestsProvider = StateProvider<int>((ref) => 0);

final nowPlayingProvider =
    StateNotifierProvider<NowPlayingNotifier, NowPlaying>((ref) {
  return NowPlayingNotifier();
});

class NowPlayingNotifier extends StateNotifier<NowPlaying> {
  NowPlayingNotifier() : super(const NowPlaying());

  void saveNowPlaying(NowPlaying nowPlaying) {
    state = nowPlaying.copyWith();
  }
}

final popularProvider = StateNotifierProvider<PopularNotifier, Popular>((ref) {
  return PopularNotifier();
});

class PopularNotifier extends StateNotifier<Popular> {
  PopularNotifier() : super(const Popular());

  void savePopular(Popular popular) {
    state = popular.copyWith();
  }
}

final continuosPopularProvider =
    StateNotifierProvider<ContinuosPopularNotifier, List<Result>>((ref) {
  return ContinuosPopularNotifier();
});

class ContinuosPopularNotifier extends StateNotifier<List<Result>> {
  ContinuosPopularNotifier() : super([]);

  void savePopularMovies(List<Result> results) {
    state = [...state, ...results];
  }
}

final numberPageProvider = StateProvider<int>((ref) {
  final popular = ref.watch(popularProvider);

  if (popular.page == null) return 1;
  return popular.page! + 1;
});

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
