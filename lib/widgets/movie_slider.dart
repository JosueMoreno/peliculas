import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:peliculas/models/models.dart';
import 'package:peliculas/providers/providers.dart';

class MovieSlider extends ConsumerWidget {
  final String? title;
  const MovieSlider({super.key, this.title});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<void> response = ref.watch(popularResponseProvider);
    final Popular popular = ref.watch(popularProvider);

    return SizedBox(
      height: 266,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title != null)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13.0),
              child: Text(
                title!,
                style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
          const SizedBox(height: 7),
          Expanded(
            child: response.when(
              data: (data) => ListView.builder(
                itemCount: popular.results?.length,
                scrollDirection: Axis.horizontal,
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
    final Popular popular = ref.watch(popularProvider);

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
                //image: NetworkImage('https://via.placeholder.com/300x400'),
                image: NetworkImage(
                  'https://image.tmdb.org/t/p/w500${popular.results?[index].poster_path}',
                ),
                fit: BoxFit.cover,
                width: 133,
                height: 166,
              ),
            ),
          ),
          const SizedBox(height: 3),
          Text(
            popular.results![index].title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
