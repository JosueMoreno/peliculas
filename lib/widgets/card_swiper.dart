import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:peliculas/models/models.dart';
import 'package:peliculas/providers/providers.dart';

class CardSwiper extends ConsumerWidget {
  const CardSwiper({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<void> response = ref.watch(nowPlayingResponseProvider);
    final NowPlaying nowPlaying = ref.watch(nowPlayingProvider);

    return response.when(
      data: (data) => Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.5,
        color: Colors.white,
        child: Swiper(
          itemCount: nowPlaying.results!.length,
          layout: SwiperLayout.STACK,
          itemWidth: MediaQuery.of(context).size.width * 0.66,
          itemHeight: MediaQuery.of(context).size.height * 0.44,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () => Navigator.of(context).pushNamed('details'),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(22),
                child: FadeInImage(
                  placeholder: const AssetImage('assets/images/no-image.jpg'),
                  image: NetworkImage(
                    'https://image.tmdb.org/t/p/w500${nowPlaying.results![index].poster_path!}',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        ),
      ),
      error: (error, stackTrace) => Text('Error: $error'),
      loading: () => Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.5,
        color: Colors.white,
        child: const Center(
          child: CircularProgressIndicator.adaptive(),
        ),
      ),
    );
  }
}
