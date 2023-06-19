import 'dart:convert';

import 'package:http/http.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:peliculas/models/models.dart';
import 'package:peliculas/providers/providers.dart';

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
        //debugPrint('Datos recibidos con exito');
        String data = utf8.decode(response.bodyBytes);
        final dynamic json = jsonDecode(data);
        final NowPlaying nowPlaying = NowPlaying.fromJson(json);
        ref.read(nowPlayingProvider.notifier).saveNowPlaying(nowPlaying);
        return;
      } else {
        debugPrint(
          "Ha ocurrido un error: Status Code ${response.statusCode.toString()}",
        );
        throw Exception();
      }
    } catch (e) {
      debugPrint("Ha ocurrido un error global: ${e.toString()}");
      throw Exception();
    }
  },
);

final popularResponseProvider = FutureProvider<List<Result>>(
  (ref) async {
    final request = ref.watch(requestsProvider);
    debugPrint('Ejecutando FutureProvider. Peticion # $request');

      final Response response = await get(
        Uri.https(
          'api.themoviedb.org',
          '3/movie/popular',
          {
            'api_key': '388f753b1e0ec598c03200049fe68367',
            'language': 'en-US',
            'page': '${ref.read(numberPageProvider)}',
          },
        ),
      );

      if (response.statusCode == 200) {
        //debugPrint('Datos recibidos con exito');
        String data = utf8.decode(response.bodyBytes);
        final dynamic json = jsonDecode(data);
        final Popular popular = Popular.fromJson(json);
        ref.read(popularProvider.notifier).savePopular(popular);
        ref
            .read(continuosPopularProvider.notifier)
            .savePopularMovies(ref.read(popularProvider).results!);
        debugPrint('Peticion terminada');
        return ref.read(continuosPopularProvider);
      } else {
        debugPrint(
          "Ha ocurrido un error: Status Code ${response.statusCode.toString()}",
        );
        throw Exception();
      }
  },
);

final getMoviesCastProvider = FutureProvider<List<Cast>>((ref) async {
  final Result movie = ref.watch(selectedMovie);

  if (ref.read(moviesCastProvider).containsKey(movie.id)) {
    return ref.read(moviesCastProvider)[movie.id]!;
  }

  final Response response = await get(
    Uri.https(
      'api.themoviedb.org',
      '3/movie/${movie.id}/credits',
      {
        'api_key': '388f753b1e0ec598c03200049fe68367',
      },
    ),
  );

  if (response.statusCode == 200) {
    debugPrint('Datos recibidos con exito from movie ID: ${movie.id}');
    String data = utf8.decode(response.bodyBytes);
    final dynamic json = jsonDecode(data);
    final Credits credits = Credits.fromJson(json);
    ref.read(moviesCastProvider.notifier).update(credits);
    return ref.read(moviesCastProvider)[movie.id]!;
  } else {
    debugPrint(
      "Ha ocurrido un error: Status Code ${response.statusCode.toString()}",
    );
    throw Exception();
  }
});

Future<void> fetchMovies(WidgetRef ref) async {
  final Response response = await get(
    Uri.https(
      'api.themoviedb.org',
      '3/movie/popular',
      {
        'api_key': '388f753b1e0ec598c03200049fe68367',
        'language': 'en-US',
        'page': ref.read(numberPageProvider).toString(),
      },
    ),
  );

  if (response.statusCode == 200) {
    debugPrint('Datos recibidos con exito');
    String data = utf8.decode(response.bodyBytes);
    final dynamic json = jsonDecode(data);
    final Popular popular = Popular.fromJson(json);
    ref.read(popularProvider.notifier).savePopular(popular);
    ref
        .read(continuosPopularProvider.notifier)
        .savePopularMovies(ref.read(popularProvider).results!);
  } else {
    debugPrint(
      "Ha ocurrido un error: Status Code ${response.statusCode.toString()}",
    );
  }
}