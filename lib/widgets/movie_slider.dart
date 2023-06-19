import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:peliculas/models/models.dart';
import 'package:peliculas/screens/screens.dart';
import 'package:peliculas/providers/providers.dart';

class MovieSlider extends ConsumerStatefulWidget {
  final String? title;
  const MovieSlider({super.key, this.title});

  @override
  ConsumerState<MovieSlider> createState() => _MovieSliderState();
}

class _MovieSliderState extends ConsumerState<MovieSlider> {
  late final ScrollController scrollController;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
    scrollController.addListener(() {
      requestMovies(ref, scrollController);
    });
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final AsyncValue<List<Result>> response = ref.watch(popularResponseProvider);

    return SizedBox(
      height: 266,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (widget.title != null)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13.0),
              child: Text(
                widget.title!,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          const SizedBox(height: 7),
          Expanded(
            child: response.when(
              skipLoadingOnReload: true,
              data: (data) => ListView.builder(
                itemCount: data.length,
                scrollDirection: Axis.horizontal,
                controller: scrollController,
                itemBuilder: (BuildContext context, int index) {
                  return MoviePoster(movie: data[index]);
                },
              ),
              error: (error, stackTrace) => Text('Error: $error'),
              loading: () => ListView.builder(
                itemCount: 7,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) => Container(
                  width: 133,
                  height: 188,
                  margin: const EdgeInsets.all(11),
                  child: const Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MoviePoster extends ConsumerWidget {
  final Result movie;

  const MoviePoster({
    super.key,
    required this.movie,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: 133,
      height: 188,
      margin: const EdgeInsets.all(11),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              ref.read(selectedMovie.notifier).state = movie.copyWith();
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const DetailsScreen(),
                ),
              );
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(22),
              child: FadeInImage(
                width: 133,
                height: 166,
                fit: BoxFit.cover,
                placeholder: const AssetImage('assets/images/no-image.jpg'),
                image: NetworkImage(
                  'https://image.tmdb.org/t/p/w500${movie.poster_path}',
                ),
                imageErrorBuilder: (context, error, stackTrace) => Image.asset(
                  'assets/images/no-image.jpg',
                  fit: BoxFit.cover,
                  width: 133,
                  height: 166,
                ),
              ),
            ),
          ),
          const SizedBox(height: 3),
          Text(
            movie.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}

Future<void> requestMovies(WidgetRef ref, ScrollController ctr) async {
  if (ctr.offset + 300 > ctr.position.maxScrollExtent) {
    if (ref.read(isLoadingProvider)) {
      debugPrint('Peticion rechazada');
      return;
    }
    debugPrint('Peticion aceptada');
    ref.read(isLoadingProvider.notifier).state = true;
    ref.read(requestsProvider.notifier).state++;
    //await fetchMovies(ref);
    await Future.delayed(const Duration(milliseconds: 222));
    ref.read(isLoadingProvider.notifier).state = false;
  }
}
