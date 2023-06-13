import 'package:flutter/material.dart';
import 'package:peliculas/widgets/widgets.dart';

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
                const Overview(),
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

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
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
          padding: const EdgeInsets.only(bottom: 7),
          child: const Text(
            'Movie Title',
            style: TextStyle(fontSize: 17),
          ),
        ),
        background: const FadeInImage(
          placeholder: AssetImage('assets/images/loading.gif'),
          image: NetworkImage('https://via.placeholder.com/500x300'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class PosterAndTitle extends StatelessWidget {
  const PosterAndTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 22),
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(22),
            child: const FadeInImage(
              placeholder: AssetImage('assets/images/no-image.jpg'),
              image: NetworkImage('https://via.placeholder.com/200x300'),
              height: 155,
            ),
          ),
          const SizedBox(width: 22),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'movie.title',
                style: Theme.of(context).textTheme.headlineSmall,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
              Text(
                'movie.originalTitle',
                style: Theme.of(context).textTheme.titleMedium,
                overflow: TextOverflow.ellipsis,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.star_border_outlined,
                    size: 17,
                    color: Colors.grey,
                  ),
                  const SizedBox(width: 7),
                  Text(
                    'movie.voteAverage',
                    style: Theme.of(context).textTheme.bodySmall,
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

class Overview extends StatelessWidget {
  const Overview({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 33,
        vertical: 11,
      ),
      child: Text(
        """Eu sunt mollit ex excepteur nulla consectetur mollit ullamco sint. Pariatur non anim et fugiat ipsum cillum consectetur Lorem laborum. Labore sunt ad anim dolor sunt tempor cillum laborum. Do qui excepteur cillum aute excepteur magna consequat excepteur id anim voluptate. Mollit minim nisi deserunt nostrud exercitation.
Non eiusmod esse quis ipsum dolor irure dolore quis velit enim adipisicing nulla enim officia. Et eu enim nostrud eiusmod eu culpa non magna velit dolore amet commodo esse eu. Duis est veniam est adipisicing consequat eu excepteur elit nulla nulla cillum. Et incididunt ut consectetur laboris fugiat ut consequat nisi deserunt sint eu mollit velit duis. Mollit cupidatat cupidatat sint commodo pariatur pariatur laborum labore ipsum.""",
        textAlign: TextAlign.justify,
        style: Theme.of(context).textTheme.bodySmall,
      ),
    );
  }
}
