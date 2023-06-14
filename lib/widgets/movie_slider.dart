import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:peliculas/models/models.dart';
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
      //ref.read(popularResponseProvider); //Buscar realizar una llamada al servidor y no varias
    });
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final AsyncValue<void> response = ref.watch(popularResponseProvider);
    final List<Result> movies = ref.watch(continuosPopularProvider);

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
                style:
                    const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
          const SizedBox(height: 7),
          Expanded(
            child: response.when(
              data: (data) => ListView.builder(
                itemCount: movies.length,
                scrollDirection: Axis.horizontal,
                controller: scrollController,
                itemBuilder: (BuildContext context, int index) =>
                    MoviePoster(index: index),
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
  final int index;

  const MoviePoster({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<Result> movies = ref.watch(continuosPopularProvider);
    debugPrint('Item created at $index');

    return Container(
      width: 133,
      height: 188,
      margin: const EdgeInsets.all(11),
      child: Column(
        children: [
          InkWell(
            onTap: () => Navigator.of(context).pushNamed('details'),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(22),
              child: FadeInImage(
                placeholder: const AssetImage('assets/images/no-image.jpg'),
                image: NetworkImage(
                  'https://image.tmdb.org/t/p/w500${movies[index].poster_path}',
                ),
                fit: BoxFit.cover,
                width: 133,
                height: 166,
              ),
            ),
          ),
          const SizedBox(height: 3),
          Text(
            movies[index].title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
