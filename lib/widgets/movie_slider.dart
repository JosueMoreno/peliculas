import 'package:flutter/material.dart';

class MovieSlider extends StatelessWidget {
  const MovieSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 266,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 13.0),
            child: Text(
              'Populares',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 7),
          Expanded(
            child: ListView.builder(
              itemCount: 22,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) =>
                  const MoviePoster(),
            ),
          ),
        ],
      ),
    );
  }
}

class MoviePoster extends StatelessWidget {
  const MoviePoster({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
              child: const FadeInImage(
                placeholder: AssetImage('assets/images/no-image.jpg'),
                image: NetworkImage('https://via.placeholder.com/300x400'),
                fit: BoxFit.cover,
                width: 133,
                height: 166,
              ),
            ),
          ),
          const SizedBox(height: 3),
          const Text(
            'Adipisicing veniam anim tempor sunt enim labore.',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
