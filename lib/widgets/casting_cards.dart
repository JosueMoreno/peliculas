import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:peliculas/models/models.dart';
import 'package:peliculas/providers/providers.dart';

class CastingCards extends ConsumerWidget {
  const CastingCards({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<Cast>> cast = ref.watch(getMoviesCastProvider);

    return cast.when(
      data: (data) => Container(
        margin: const EdgeInsets.only(bottom: 11),
        height: 199,
        width: double.infinity,
        child: ListView.builder(
          itemCount: data.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return CastCard(actor: data[index]);
          },
        ),
      ),
      error: (error, stackTrace) => Text('Error: $error'),
      loading: () => Container(
        margin: const EdgeInsets.only(bottom: 22),
        height: 177,
        width: double.infinity,
        child: ListView.builder(
          itemCount: 11,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 11),
              height: 111,
              width: 133,
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(22),
                    child: const Center(
                      child: CircularProgressIndicator(),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class CastCard extends StatelessWidget {
  final Cast actor;

  const CastCard({super.key, required this.actor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 11),
      height: 188,
      width: 133,
      child: Column(
        children: [
          Expanded(
            flex: 9,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(22),
              child: FadeInImage(
                width: 111,
                height: 144,
                fit: BoxFit.cover,
                placeholder: const AssetImage('assets/images/no-image.jpg'),
                image: NetworkImage(
                  'https://image.tmdb.org/t/p/w500${actor.profile_path}',
                ),
                imageErrorBuilder: (context, error, stackTrace) => Image.asset(
                  'assets/images/no-image.jpg',
                  fit: BoxFit.cover,
                  width: 111,
                  height: 144,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              '${actor.name}',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
