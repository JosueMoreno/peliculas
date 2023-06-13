import 'dart:convert';

import 'package:http/http.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:peliculas/models/models.dart';

final nowPlayingResponseProvider = FutureProvider<void>(
  (ref) async {
    try {
      final Response response = await get(
        Uri.https(
          'api.themoviedb.org',
          '3/movie/now_playing',
          {
            'api_key': '388f753b1e0ec598c03200049fe68367',
            'language': 'en-US',
            'page': '1',
          },
        ),
      );

      if (response.statusCode == 200) {
        debugPrint('Datos recibidos con exito');
        String data = utf8.decode(response.bodyBytes);
        final dynamic json = jsonDecode(data);
        final NowPlaying nowPlaying = NowPlaying.fromJson(json);
        ref.read(nowPlayingProvider.notifier).saveNowPlaying(nowPlaying);
      } else {
        debugPrint(
          "Ha ocurrido un error: Status Code ${response.statusCode.toString()}",
        );
      }
    } catch (e) {
      debugPrint("Ha ocurrido un error global: ${e.toString()}");
    }
  },
);

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

final popularResponseProvider = FutureProvider<void>(
  (ref) async {
      final Response response = await get(
        Uri.https(
          'api.themoviedb.org',
          '3/movie/popular',
          {
            'api_key': '388f753b1e0ec598c03200049fe68367',
            'language': 'en-US',
            'page': '1',
          },
        ),
      );

      if (response.statusCode == 200) {
        debugPrint('Datos recibidos con exito');
        String data = utf8.decode(response.bodyBytes);
        final dynamic json = jsonDecode(data);
        final Popular popular = Popular.fromJson(json);
        ref.read(popularProvider.notifier).savePopular(popular);
      } else {
        debugPrint(
          "Ha ocurrido un error: Status Code ${response.statusCode.toString()}",
        );
      }
  },
);

final popularProvider =
    StateNotifierProvider<PopularNotifier, Popular>((ref) {
  return PopularNotifier();
});

class PopularNotifier extends StateNotifier<Popular> {
  PopularNotifier() : super(const Popular());

  void savePopular(Popular popular) {
    state = popular.copyWith();
  }
}