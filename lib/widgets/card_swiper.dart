import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:peliculas/models/models.dart';
import 'package:peliculas/screens/screens.dart';
import 'package:peliculas/providers/providers.dart';

class CardSwiper extends ConsumerWidget {
  const CardSwiper({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<NowPlaying> response = ref.watch(getNowPlayingProvider);

    return response.when(
      data: (data) => Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.5,
        color: Colors.white,
        child: Swiper(
          itemCount: data.results!.length,
          layout: SwiperLayout.STACK,
          itemWidth: MediaQuery.of(context).size.width * 0.66,
          itemHeight: MediaQuery.of(context).size.height * 0.44,
          itemBuilder: (context, index) {
            final Key key = Key(data.results![index].toString());
            return InkWell(
              onTap: () {
                ref.read(selectedMovieProvider.notifier).state =
                    data.results![index].copyWith();
                ref.read(keyProvider.notifier).state = key;
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const DetailsScreen(),
                  ),
                );
              },
              child: Hero(
                tag: key,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(22),
                  child: FadeInImage(
                    fit: BoxFit.cover,
                    placeholder: const AssetImage('assets/images/no-image.jpg'),
                    image: NetworkImage(
                      'https://image.tmdb.org/t/p/w500${data.results![index].poster_path}',
                    ),
                    imageErrorBuilder: (context, error, stackTrace) =>
                        Image.asset(
                      'assets/images/no-image.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
      error: (error, stackTrace) {
        debugPrint('Error: $error');
        return Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.5,
          color: Colors.white,
          child: const Center(
            child: CircularProgressIndicator.adaptive(),
          ),
        );
      },
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
