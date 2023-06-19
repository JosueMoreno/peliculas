import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:peliculas/widgets/widgets.dart';
import 'package:peliculas/providers/providers.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const CustomAppBar(),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const PosterAndTitle(),
                const Overview(),
                const CastingCards(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomAppBar extends ConsumerWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SliverAppBar(
      backgroundColor: Colors.indigo,
      expandedHeight: 222,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: const EdgeInsets.all(0),
        centerTitle: true,
        title: Container(
          width: double.infinity,
          alignment: Alignment.bottomCenter,
          color: Colors.black12,
          padding: const EdgeInsets.only(bottom: 7, left: 11, right: 11),
          child: Text(
            ref.read(selectedMovie).title ?? 'Movie Title',
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            overflow: TextOverflow.ellipsis,
          ),
        ),
        background: FadeInImage(
          fit: BoxFit.cover,
          placeholder: const AssetImage('assets/images/loading.gif'),
          image: NetworkImage(
            'https://image.tmdb.org/t/p/w500${ref.read(selectedMovie).backdrop_path}',
          ),
          imageErrorBuilder: (context, error, stackTrace) => Image.asset(
            'assets/images/no-image.jpg',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class PosterAndTitle extends ConsumerWidget {
  const PosterAndTitle({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      margin: const EdgeInsets.only(top: 22),
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(22),
            child: FadeInImage(
              height: 155,
              placeholder: const AssetImage('assets/images/no-image.jpg'),
              image: NetworkImage(
                'https://image.tmdb.org/t/p/w500${ref.read(selectedMovie).poster_path}',
              ),
              imageErrorBuilder: (context, error, stackTrace) => Image.asset(
                'assets/images/no-image.jpg',
                height: 155,
              ),
            ),
          ),
          const SizedBox(width: 22),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  ref.read(selectedMovie).title ?? 'movie.title',
                  style: Theme.of(context).textTheme.headlineSmall,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                const SizedBox(height: 3),
                Text(
                  ref.read(selectedMovie).original_title ?? 'movie.originalTitle',
                  style: Theme.of(context).textTheme.titleMedium,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 3),
                Row(
                  children: [
                    const Icon(
                      Icons.star_border_outlined,
                      size: 17,
                      color: Colors.grey,
                    ),
                    const SizedBox(width: 7),
                    Text(
                      ref.read(selectedMovie).vote_average.toString(),
                      style: Theme.of(context).textTheme.bodySmall,
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Overview extends ConsumerWidget {
  const Overview({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 33,
        vertical: 13,
      ),
      child: Text(
        ref.read(selectedMovie).overview ??
            """Eu sunt mollit ex excepteur nulla consectetur mollit ullamco sint. 
        Pariatur non anim et fugiat ipsum cillum consectetur Lorem laborum. 
        Labore sunt ad anim dolor sunt tempor cillum laborum. Do qui excepteur 
        cillum aute excepteur magna consequat excepteur id anim voluptate. Mollit 
        minim nisi deserunt nostrud exercitation.
        Non eiusmod esse quis ipsum dolor irure dolore quis velit enim adipisicing 
        nulla enim officia. Et eu enim nostrud eiusmod eu culpa non magna velit dolore 
        amet commodo esse eu. Duis est veniam est adipisicing consequat eu excepteur elit 
        nulla nulla cillum. Et incididunt ut consectetur laboris fugiat ut consequat nisi 
        deserunt sint eu mollit velit duis. Mollit cupidatat cupidatat sint commodo pariatur 
        pariatur laborum labore ipsum.""",
        textAlign: TextAlign.justify,
        style: Theme.of(context).textTheme.bodySmall,
      ),
    );
  }
}
